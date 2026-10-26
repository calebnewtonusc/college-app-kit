# Days since 1970 for YYYY-MM-DD. Civil-days algorithm, portable awk, no `date -d`.
function days(d,   y, m, dd, era, yoe, doy, doe) {
  y = substr(d,1,4)+0; m = substr(d,6,2)+0; dd = substr(d,9,2)+0
  if (y == 0 || m == 0 || dd == 0) return -999999
  y -= (m <= 2)
  era = int((y >= 0 ? y : y - 399) / 400)
  yoe = y - era * 400
  doy = int((153 * (m + (m > 2 ? -3 : 9)) + 2) / 5) + dd - 1
  doe = yoe * 365 + int(yoe / 4) - int(yoe / 100) + doy
  return era * 146097 + doe - 719468
}
