# 讀取原檔案內容
$content = Get-Content "Moon.filter"

# 替換內容
$content1 = $content -replace 'Show #印鈔 - 終局 - 速刷', 'Hide #印鈔 - 終局 - 速刷'
$content2 = $content -replace 'Show #印鈔 - 終局', 'Hide #印鈔 - 終局'
$content3 = $content -replace 'Show #印鈔', 'Hide #印鈔'

# 將修改後的內容儲存為新檔案
$content1 | Set-Content "Moon_速刷.filter"
$content2 | Set-Content "Moon_終局.filter"
$content3 | Set-Content "Moon_印鈔.filter"