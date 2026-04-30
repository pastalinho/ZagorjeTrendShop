# ZagorjeTrendShop - Preuzimanje slika s yupoo
# Pokreni: desni klik -> "Run with PowerShell"
# Ako javlja gresku oko execution policy, otvori PowerShell kao admin i upisi:
#   Set-ExecutionPolicy -Scope CurrentUser RemoteSigned

$folder = "$PSScriptRoot\images"
if (!(Test-Path $folder)) { New-Item -ItemType Directory -Path $folder | Out-Null }

$headers = @{ "Referer" = "https://www.yupoo.com/" }

function DL($url, $name) {
    $out = "$folder\$name"
    if (Test-Path $out) { Write-Host "  vec postoji: $name" -ForegroundColor DarkGray; return }
    try {
        Invoke-WebRequest -Uri $url -Headers $headers -OutFile $out -TimeoutSec 15 -ErrorAction Stop
        Write-Host "  OK  $name" -ForegroundColor Green
    } catch {
        Write-Host "  GRESKA $name" -ForegroundColor Red
    }
}

Write-Host "`nPreuzimanje slika za ZagorjeTrendShop..." -ForegroundColor Cyan

# New Balance 9060
Write-Host "`n[New Balance 9060]"
DL "https://photo.yupoo.com/riyuehong2/96df2029/medium.jpg" "nb_1.jpg"
DL "https://photo.yupoo.com/riyuehong2/09f29bed/medium.jpg" "nb_2.jpg"
DL "https://photo.yupoo.com/riyuehong2/cb968e45/medium.jpg" "nb_3.jpg"
DL "https://photo.yupoo.com/riyuehong2/4598119d/medium.jpg" "nb_4.jpg"
DL "https://photo.yupoo.com/riyuehong2/040d026e/medium.jpg" "nb_5.jpg"
DL "https://photo.yupoo.com/riyuehong2/4e025c84/medium.jpg" "nb_6.jpg"
DL "https://photo.yupoo.com/riyuehong2/a3280cd7/medium.jpg" "nb_7.jpg"
DL "https://photo.yupoo.com/riyuehong2/1a97820a/medium.jpg" "nb_8.jpg"
DL "https://photo.yupoo.com/riyuehong2/f38cf153/medium.jpg" "nb_9.jpg"
DL "https://photo.yupoo.com/riyuehong2/0cab7c8a/medium.jpg" "nb_10.jpg"
DL "https://photo.yupoo.com/riyuehong2/dde27063/medium.jpg" "nb_11.jpg"
DL "https://photo.yupoo.com/riyuehong2/907ff585/medium.jpg" "nb_12.jpg"

# Nike TN / DN
Write-Host "`n[Nike TN / DN]"
DL "https://photo.yupoo.com/xy666999/66f6417d/medium.jpg" "tn_1.jpg"
DL "https://photo.yupoo.com/xy666999/a3a4a87d/medium.jpg" "tn_2.jpg"
DL "https://photo.yupoo.com/xy666999/bce5ae30/medium.jpg" "tn_3.jpg"
DL "https://photo.yupoo.com/xy666999/c3813b9e/medium.jpg" "tn_4.jpg"
DL "https://photo.yupoo.com/xy666999/2a4f422d/medium.jpg" "tn_5.jpg"
DL "https://photo.yupoo.com/xy666999/3caaff2c/medium.jpg" "tn_6.jpg"
DL "https://photo.yupoo.com/xy666999/53718914/medium.jpg" "tn_7.jpg"
DL "https://photo.yupoo.com/xy666999/d9f5c464/medium.jpg" "tn_8.jpg"
DL "https://photo.yupoo.com/xy666999/2bcd0c43/medium.jpg" "tn_9.jpg"
DL "https://photo.yupoo.com/xy666999/381fff15/medium.jpg" "tn_10.jpg"
DL "https://photo.yupoo.com/xy666999/62a7880b/medium.jpg" "tn_11.jpg"
DL "https://photo.yupoo.com/xy666999/a17d8d9a/medium.jpg" "tn_12.jpg"

# Jordan 4 (potvrdjeni AJ4 modeli)
Write-Host "`n[Jordan 4]"
DL "https://photo.yupoo.com/xp188188/133430a3/medium.jpeg" "j4_1.jpg"
DL "https://photo.yupoo.com/xp188188/e28ab75a/medium.jpeg" "j4_2.jpg"
DL "https://photo.yupoo.com/xp188188/4c539d1e/medium.jpeg" "j4_3.jpg"
DL "https://photo.yupoo.com/xp188188/16f6d98f/medium.jpeg" "j4_4.jpg"
DL "https://photo.yupoo.com/xp188188/233f26c3/medium.jpeg" "j4_5.jpg"
DL "https://photo.yupoo.com/xp188188/e1d47148/medium.jpeg" "j4_6.jpg"
DL "https://photo.yupoo.com/xp188188/fb269acd/medium.jpeg" "j4_7.jpg"
DL "https://photo.yupoo.com/xp188188/cb7910ac/medium.jpeg" "j4_8.jpg"
DL "https://photo.yupoo.com/xp188188/ae8810bc/medium.jpeg" "j4_9.jpg"
DL "https://photo.yupoo.com/xp188188/41f358bc/medium.jpeg" "j4_10.jpg"
DL "https://photo.yupoo.com/xp188188/74903eb3/medium.jpeg" "j4_11.jpg"
DL "https://photo.yupoo.com/xp188188/cb9dcc8f/medium.jpeg" "j4_12.jpg"
DL "https://photo.yupoo.com/xp188188/be38eaac/medium.jpeg" "j4_13.jpg"
DL "https://photo.yupoo.com/xp188188/8605baee/medium.jpeg" "j4_14.jpg"
DL "https://photo.yupoo.com/xp188188/9f53566e/medium.jpeg" "j4_15.jpg"

# Premiata
Write-Host "`n[Premiata]"
DL "https://photo.yupoo.com/3052524767/192013d9/medium.jpg"  "pm_1.jpg"
DL "https://photo.yupoo.com/3052524767/eb42d2d7/medium.jpg"  "pm_2.jpg"
DL "https://photo.yupoo.com/3052524767/d6f90cc8/medium.jpg"  "pm_3.jpg"
DL "https://photo.yupoo.com/3052524767/3dc87d6d/medium.jpg"  "pm_4.jpg"
DL "https://photo.yupoo.com/3052524767/f1a6cef2/medium.jpg"  "pm_5.jpg"
DL "https://photo.yupoo.com/3052524767/a8b19691/medium.jpg"  "pm_6.jpg"
DL "https://photo.yupoo.com/3052524767/c21bf1f4/medium.jpg"  "pm_7.jpg"
DL "https://photo.yupoo.com/3052524767/c62cb4d0/medium.jpeg" "pm_8.jpg"
DL "https://photo.yupoo.com/3052524767/649121c4/medium.jpeg" "pm_9.jpg"
DL "https://photo.yupoo.com/3052524767/8516bd08/medium.jpeg" "pm_10.jpg"

# Nogometne kopacke
Write-Host "`n[Nogometne kopacke]"
DL "https://photo.yupoo.com/yehecheng/1e1bb7ef/medium.jpg" "fb_1.jpg"
DL "https://photo.yupoo.com/yehecheng/770c6852/medium.jpg" "fb_2.jpg"
DL "https://photo.yupoo.com/yehecheng/75debada/medium.jpg" "fb_3.jpg"
DL "https://photo.yupoo.com/yehecheng/ca46b0af/medium.jpg" "fb_4.jpg"
DL "https://photo.yupoo.com/yehecheng/694fc793/medium.jpg" "fb_5.jpg"
DL "https://photo.yupoo.com/yehecheng/12ebb9eb/medium.jpg" "fb_6.jpg"
DL "https://photo.yupoo.com/yehecheng/20dab986/medium.jpg" "fb_7.jpg"
DL "https://photo.yupoo.com/yehecheng/ffcef051/medium.jpg" "fb_8.jpg"
DL "https://photo.yupoo.com/yehecheng/90e89ae0/medium.jpg" "fb_9.jpg"
DL "https://photo.yupoo.com/yehecheng/fbd746ec/medium.jpg" "fb_10.jpg"

# Balenciaga
Write-Host "`n[Balenciaga]"
DL "https://photo.yupoo.com/linjixiemao/e7a0c58a/medium.jpg" "bl_1.jpg"
DL "https://photo.yupoo.com/linjixiemao/8137396b/medium.jpg" "bl_2.jpg"
DL "https://photo.yupoo.com/linjixiemao/87579e96/medium.jpg" "bl_3.jpg"
DL "https://photo.yupoo.com/linjixiemao/aea19654/medium.jpg" "bl_4.jpg"
DL "https://photo.yupoo.com/linjixiemao/e568764a/medium.jpg" "bl_5.jpg"
DL "https://photo.yupoo.com/linjixiemao/2615c333/medium.jpg" "bl_6.jpg"
DL "https://photo.yupoo.com/linjixiemao/1b8c3e1c/medium.jpg" "bl_7.jpg"
DL "https://photo.yupoo.com/linjixiemao/1f64ee2e/medium.jpg" "bl_8.jpg"
DL "https://photo.yupoo.com/linjixiemao/4829e838/medium.jpg" "bl_9.jpg"
DL "https://photo.yupoo.com/linjixiemao/7ab464f6/medium.jpg" "bl_10.jpg"

# Kape
Write-Host "`n[Kape]"
DL "https://photo.yupoo.com/nininid/edbfd4da/medium.jpg" "cp_1.jpg"
DL "https://photo.yupoo.com/nininid/1f8cee13/medium.jpg" "cp_2.jpg"
DL "https://photo.yupoo.com/nininid/ad0cead0/medium.jpg" "cp_3.jpg"
DL "https://photo.yupoo.com/nininid/52344b2d/medium.jpg" "cp_4.jpg"
DL "https://photo.yupoo.com/nininid/836df7d8/medium.jpg" "cp_5.jpg"
DL "https://photo.yupoo.com/nininid/c47f2d76/medium.jpg" "cp_6.jpg"
DL "https://photo.yupoo.com/nininid/70c7700e/medium.jpg" "cp_7.jpg"
DL "https://photo.yupoo.com/nininid/0e2bc37f/medium.jpg" "cp_8.jpg"
DL "https://photo.yupoo.com/nininid/885bd33d/medium.jpg" "cp_9.jpg"
DL "https://photo.yupoo.com/nininid/889d7bf6/medium.jpg" "cp_10.jpg"
DL "https://photo.yupoo.com/nininid/34292472/medium.jpg" "cp_11.jpg"
DL "https://photo.yupoo.com/nininid/cc6537e9/medium.jpg" "cp_12.jpg"

# Jordan 11
Write-Host "`n[Jordan 11]"
DL "https://photo.yupoo.com/xp188188/eee8b272/medium.jpeg" "aj11_1.jpg"
DL "https://photo.yupoo.com/xp188188/ccede7cb/medium.jpeg" "aj11_2.jpg"
DL "https://photo.yupoo.com/xp188188/d01c7afc/medium.jpeg" "aj11_3.jpg"
DL "https://photo.yupoo.com/xp188188/b832899e/medium.jpeg" "aj11_4.jpg"
DL "https://photo.yupoo.com/xp188188/9dd1e317/medium.jpeg" "aj11_5.jpg"
DL "https://photo.yupoo.com/xp188188/98e6e08a/medium.jpeg" "aj11_6.jpg"
DL "https://photo.yupoo.com/xp188188/33cf585b/medium.jpeg" "aj11_7.jpg"
DL "https://photo.yupoo.com/xp188188/d3055431/medium.jpeg" "aj11_8.jpg"
DL "https://photo.yupoo.com/xp188188/303b58cd/medium.jpeg" "aj11_9.jpg"
DL "https://photo.yupoo.com/xp188188/ef94b34c/medium.jpeg" "aj11_10.jpg"
DL "https://photo.yupoo.com/xp188188/3fee4b64/medium.jpeg" "aj11_11.jpg"
DL "https://photo.yupoo.com/xp188188/7e03edad/medium.jpeg" "aj11_12.jpg"

# New Balance 1000
Write-Host "`n[New Balance 1000]"
DL "https://photo.yupoo.com/riyuehong2/dc2de20d/medium.jpg" "nb1000_1.jpg"
DL "https://photo.yupoo.com/riyuehong2/2e636648/medium.jpg" "nb1000_2.jpg"
DL "https://photo.yupoo.com/riyuehong2/900b1058/medium.jpg" "nb1000_3.jpg"
DL "https://photo.yupoo.com/riyuehong2/65572c38/medium.jpg" "nb1000_4.jpg"
DL "https://photo.yupoo.com/riyuehong2/d5ee54a7/medium.jpg" "nb1000_5.jpg"
DL "https://photo.yupoo.com/riyuehong2/34db6c3e/medium.jpg" "nb1000_6.jpg"
DL "https://photo.yupoo.com/riyuehong2/067ce439/medium.jpg" "nb1000_7.jpg"
DL "https://photo.yupoo.com/riyuehong2/bb250364/medium.jpg" "nb1000_8.jpg"
DL "https://photo.yupoo.com/riyuehong2/6b967900/medium.jpg" "nb1000_9.jpg"
DL "https://photo.yupoo.com/riyuehong2/18142e07/medium.jpg" "nb1000_10.jpg"

# New Balance 9060X
Write-Host "`n[New Balance 9060X]"
DL "https://photo.yupoo.com/riyuehong2/d1f9f1e7/medium.jpg" "nb9060x_1.jpg"
DL "https://photo.yupoo.com/riyuehong2/83fe75f2/medium.jpg" "nb9060x_2.jpg"
DL "https://photo.yupoo.com/riyuehong2/213c34f7/medium.jpg" "nb9060x_3.jpg"
DL "https://photo.yupoo.com/riyuehong2/19a85468/medium.jpg" "nb9060x_4.jpg"
DL "https://photo.yupoo.com/riyuehong2/dde27063/medium.jpg" "nb9060x_5.jpg"
DL "https://photo.yupoo.com/riyuehong2/907ff585/medium.jpg" "nb9060x_6.jpg"

# Yeezy 350 V2
Write-Host "`n[Yeezy 350 V2]"
DL "https://photo.yupoo.com/lol2021/ddc31131/medium.jpg" "yz_1.jpg"
DL "https://photo.yupoo.com/lol2021/426e825f/medium.jpg" "yz_2.jpg"
DL "https://photo.yupoo.com/lol2021/92059bf5/medium.jpg" "yz_3.jpg"
DL "https://photo.yupoo.com/lol2021/c45ccca9/medium.jpg" "yz_4.jpg"
DL "https://photo.yupoo.com/lol2021/83ad20de/medium.jpg" "yz_5.jpg"
DL "https://photo.yupoo.com/lol2021/5ff6b199/medium.jpg" "yz_6.jpg"
DL "https://photo.yupoo.com/lol2021/523b8cac/medium.jpg" "yz_7.jpg"
DL "https://photo.yupoo.com/lol2021/e9420de6/medium.jpg" "yz_8.jpg"
DL "https://photo.yupoo.com/lol2021/607bfb2e/medium.jpg" "yz_9.jpg"
DL "https://photo.yupoo.com/lol2021/70b077a9/medium.jpg" "yz_10.jpg"
DL "https://photo.yupoo.com/lol2021/5594bad4/medium.jpg" "yz_11.jpg"
DL "https://photo.yupoo.com/lol2021/2a692f1f/medium.jpg" "yz_12.jpg"

# Balenciaga Slides
Write-Host "`n[Balenciaga Slides]"
DL "https://photo.yupoo.com/lol2021/f58a94fa/medium.jpg" "sl_bal_1.jpg"  # Pink
DL "https://photo.yupoo.com/lol2021/edcf7fa7/medium.jpg" "sl_bal_2.jpg"  # Gray
DL "https://photo.yupoo.com/lol2021/683edc75/medium.jpg" "sl_bal_3.jpg"  # Black/White
DL "https://photo.yupoo.com/lol2021/0bce1cf8/medium.jpg" "sl_bal_4.jpg"  # Red
DL "https://photo.yupoo.com/lol2021/890efa08/medium.jpg" "sl_bal_5.jpg"  # White

# Nike Slides (Mind 001)
Write-Host "`n[Nike Slides]"
DL "https://photo.yupoo.com/lol2021/49dbb113/medium.jpg" "sl_nik_1.jpg"  # Fragment Black
DL "https://photo.yupoo.com/lol2021/911e01a0/medium.jpg" "sl_nik_2.jpg"  # Light Bone
DL "https://photo.yupoo.com/lol2021/0c684fbc/medium.jpg" "sl_nik_3.jpg"  # Red
DL "https://photo.yupoo.com/lol2021/33f5fa76/medium.jpg" "sl_nik_4.jpg"  # Black
DL "https://photo.yupoo.com/lol2021/052ee3a5/medium.jpg" "sl_nik_5.jpg"  # Light Smoke Grey

# Nike Dunk SB
Write-Host "`n[Nike Dunk SB]"
DL "https://photo.yupoo.com/lol2021/280dcae5/medium.jpg" "dn_1.jpg"  # Dodgers Blue

# Adidas Samba
Write-Host "`n[Adidas Samba]"
DL "https://photo.yupoo.com/lol2021/3ea5939f/medium.jpg" "sam_1.jpg"  # Gold White
DL "https://photo.yupoo.com/lol2021/7fdafc49/medium.jpg" "sam_2.jpg"  # Silver White
DL "https://photo.yupoo.com/lol2021/f3bf7b9a/medium.jpg" "sam_3.jpg"  # Brown Toy Story
DL "https://photo.yupoo.com/lol2021/b6218efe/medium.jpg" "sam_4.jpg"  # Brown Beige OG
DL "https://photo.yupoo.com/lol2021/b0d71ac1/medium.jpg" "sam_5.jpg"  # Cream White OG
DL "https://photo.yupoo.com/lol2021/b4211652/medium.jpg" "sam_6.jpg"  # White Navy OG
DL "https://photo.yupoo.com/lol2021/abc6b5bd/medium.jpg" "sam_7.jpg"  # Black White OG
DL "https://photo.yupoo.com/lol2021/66b1b0ed/medium.jpg" "sam_8.jpg"  # White OG
DL "https://photo.yupoo.com/lol2021/d0a872a2/medium.jpg" "sam_9.jpg"  # Cracked Silver Wmns
DL "https://photo.yupoo.com/lol2021/2f3077bb/medium.jpg" "sam_10.jpg" # Leopard Black Wmns
DL "https://photo.yupoo.com/lol2021/61483fcb/medium.jpg" "sam_11.jpg" # Leopard Pattern Wmns

# Yeezy 700
Write-Host "`n[Yeezy 700]"
DL "https://photo.yupoo.com/lol2021/a55bb244/medium.jpg" "y700_1.jpg" # Wave Runner
DL "https://photo.yupoo.com/lol2021/49e1489c/medium.jpg" "y700_2.jpg" # Inertia

# Adidas UltraBoost
Write-Host "`n[Adidas UltraBoost]"
DL "https://photo.yupoo.com/lol2021/da2d8f69/medium.jpg" "ub_1.jpg"   # Black Silver 5 TR
DL "https://photo.yupoo.com/lol2021/5c4dad23/medium.jpg" "ub_2.jpg"   # Triple White 1.0
DL "https://photo.yupoo.com/lol2021/e7d200fa/medium.jpg" "ub_3.jpg"   # Double Black 1.0
DL "https://photo.yupoo.com/lol2021/9e1cb2dc/medium.jpg" "ub_4.jpg"   # DNA Triple Black
DL "https://photo.yupoo.com/lol2021/61bb5175/medium.jpg" "ub_5.jpg"   # OG Black Blue 1.0
DL "https://photo.yupoo.com/lol2021/772f93bd/medium.jpg" "ub_6.jpg"   # Black 5 TR
DL "https://photo.yupoo.com/lol2021/51e47776/medium.jpg" "ub_7.jpg"   # White Black 5 TR
DL "https://photo.yupoo.com/lol2021/89dcd00c/medium.jpg" "ub_8.jpg"   # Red 5 TR

# Nike Kobe
Write-Host "`n[Nike Kobe]"
DL "https://photo.yupoo.com/lol2021/70699335e1/medium.jpg" "kobe_1.jpg" # Kobe 5 Blue White
DL "https://photo.yupoo.com/lol2021/cd4dae9e81/medium.jpg" "kobe_2.jpg" # Kobe 9 Black Purple

# Nike Pippen
Write-Host "`n[Nike Pippen]"
DL "https://photo.yupoo.com/lol2021/d98518b3b8/medium.jpg" "pip_1.jpg"  # Gray Big Hook
DL "https://photo.yupoo.com/lol2021/ed9de2b3d8/medium.jpg" "pip_2.jpg"  # Black High Freq
DL "https://photo.yupoo.com/lol2021/b648f0333a/medium.jpg" "pip_3.jpg"  # White Black Edge
DL "https://photo.yupoo.com/lol2021/eed57ad3b0/medium.jpg" "pip_4.jpg"  # White Wine Red
DL "https://photo.yupoo.com/lol2021/48b2b83053/medium.jpg" "pip_5.jpg"  # Black White Text
DL "https://photo.yupoo.com/lol2021/071dc0c6e5/medium.jpg" "pip_6.jpg"  # Ink Splatter
DL "https://photo.yupoo.com/lol2021/a5238ac7dc/medium.jpg" "pip_7.jpg"  # White Gray Text
DL "https://photo.yupoo.com/lol2021/42b76b87ff/medium.jpg" "pip_8.jpg"  # White Black High Freq
DL "https://photo.yupoo.com/lol2021/bd5001c391/medium.jpg" "pip_9.jpg"  # Gray Red High Freq

# Mihara Yasuhiro
Write-Host "`n[Mihara Yasuhiro]"
DL "https://photo.yupoo.com/lol2021/00022b69b1/medium.jpg" "mih_1.jpg"  # 302 White
DL "https://photo.yupoo.com/lol2021/d822d60cbd/medium.jpg" "mih_2.jpg"  # 301 Black
DL "https://photo.yupoo.com/lol2021/feb815a113/medium.jpg" "mih_3.jpg"  # 303 Full Black
DL "https://photo.yupoo.com/lol2021/a4b7661c3f/medium.jpg" "mih_4.jpg"  # 306 Rice White
DL "https://photo.yupoo.com/lol2021/3cb50c892a/medium.jpg" "mih_5.jpg"  # 307 Brown
DL "https://photo.yupoo.com/lol2021/8c90e5f47e/medium.jpg" "mih_6.jpg"  # 305 Black

# Jordan 1 Low
Write-Host "`n[Jordan 1 Low]"
DL "https://photo.yupoo.com/lol2021/2f24532607/medium.jpg" "j1_1.jpg"   # Mocha Black
DL "https://photo.yupoo.com/lol2021/53b57e8de1/medium.jpg" "j1_2.jpg"   # Hot Pink Hook

# Jordan 3
Write-Host "`n[Jordan 3]"
DL "https://photo.yupoo.com/lol2021/f279462832/medium.jpg" "j3_1.jpg"   # Blue Denim
DL "https://photo.yupoo.com/lol2021/4dbc6263/medium.jpg"   "j3_2.jpg"   # White Blue

# Jordan 5
Write-Host "`n[Jordan 5]"
DL "https://photo.yupoo.com/lol2021/b9802966/medium.jpg"   "j5_1.jpg"   # University Blue OG
DL "https://photo.yupoo.com/lol2021/49ee96dc/medium.jpg"   "j5_2.jpg"   # White Metallic OG
DL "https://photo.yupoo.com/lol2021/10ac16c0/medium.jpg"   "j5_3.jpg"   # Wolf Grey LJR
DL "https://photo.yupoo.com/lol2021/248d1cc9/medium.jpg"   "j5_4.jpg"   # AW Blue Union
DL "https://photo.yupoo.com/lol2021/8c90a927/medium.jpg"   "j5_5.jpg"   # Black Cat
DL "https://photo.yupoo.com/lol2021/e55d4da4/medium.jpg"   "j5_6.jpg"   # Blue
DL "https://photo.yupoo.com/lol2021/ed93c858/medium.jpg"   "j5_7.jpg"   # Raging Bull
DL "https://photo.yupoo.com/lol2021/18afc1bd/medium.jpg"   "j5_8.jpg"   # Black Metallic LJR
DL "https://photo.yupoo.com/lol2021/4f747646/medium.jpg"   "j5_9.jpg"   # Grape LJR
DL "https://photo.yupoo.com/lol2021/a6e8211c/medium.jpg"   "j5_10.jpg"  # OFF-WHITE Black
DL "https://photo.yupoo.com/lol2021/f64c7810/medium.jpg"   "j5_11.jpg"  # PSG Off Noir
DL "https://photo.yupoo.com/lol2021/79fae313/medium.jpg"   "j5_12.jpg"  # Wolf Grey OG

# Jordan 6
Write-Host "`n[Jordan 6]"
DL "https://photo.yupoo.com/lol2021/a0711a3fa6/medium.jpg" "j6_1.jpg"   # Sashiko White Blue
DL "https://photo.yupoo.com/lol2021/a470e32f/medium.jpg"   "j6_2.jpg"   # Darth Vader
DL "https://photo.yupoo.com/lol2021/fe4769fe/medium.jpg"   "j6_3.jpg"   # Rich Silver
DL "https://photo.yupoo.com/lol2021/0d04d4dc/medium.jpg"   "j6_4.jpg"   # Black Red Pure
DL "https://photo.yupoo.com/lol2021/baa8cba5/medium.jpg"   "j6_5.jpg"   # Black Red Value
DL "https://photo.yupoo.com/lol2021/7acf6438/medium.jpg"   "j6_6.jpg"   # Black Red OG
DL "https://photo.yupoo.com/lol2021/a1d89b37/medium.jpg"   "j6_7.jpg"   # Midnight Navy
DL "https://photo.yupoo.com/lol2021/209ca7af/medium.jpg"   "j6_8.jpg"   # Georgetown

# Jordan 12
Write-Host "`n[Jordan 12]"
DL "https://photo.yupoo.com/lol2021/ad58b4fd/medium.jpg"   "j12_1.jpg"  # Bucks
DL "https://photo.yupoo.com/lol2021/f16ade10/medium.jpg"   "j12_2.jpg"  # New Black Red
DL "https://photo.yupoo.com/lol2021/c2b747aa/medium.jpg"   "j12_3.jpg"  # Taxi OG
DL "https://photo.yupoo.com/lol2021/0e0d4a7a/medium.jpg"   "j12_4.jpg"  # Taxi Gold GX
DL "https://photo.yupoo.com/lol2021/dd2a8ec7/medium.jpg"   "j12_5.jpg"  # French Blue GX

# Jordan 13
Write-Host "`n[Jordan 13]"
DL "https://photo.yupoo.com/lol2021/332a093a/medium.jpg"   "j13_1.jpg"  # White Red
DL "https://photo.yupoo.com/lol2021/ee4fcd66/medium.jpg"   "j13_2.jpg"  # Black Red
DL "https://photo.yupoo.com/lol2021/42077c2d/medium.jpg"   "j13_3.jpg"  # White Red v2
DL "https://photo.yupoo.com/lol2021/2714d9cb/medium.jpg"   "j13_4.jpg"  # All-Star
DL "https://photo.yupoo.com/lol2021/b6334f02/medium.jpg"   "j13_5.jpg"  # Wheat
DL "https://photo.yupoo.com/lol2021/4a45fb4a/medium.jpg"   "j13_6.jpg"  # Grape Purple

# Gucci Dirty Shoe
Write-Host "`n[Gucci Dirty Shoe]"
DL "https://photo.yupoo.com/lol2021/fd495830/medium.jpg"   "gc_1.jpg"   # Black ACE Canvas
DL "https://photo.yupoo.com/lol2021/6f8adefa/medium.jpg"   "gc_2.jpg"   # White ACE Canvas
DL "https://photo.yupoo.com/lol2021/0f90f32e/medium.jpg"   "gc_3.jpg"   # Dirty Shoe
DL "https://photo.yupoo.com/lol2021/de097f86/medium.jpg"   "gc_4.jpg"   # White Rhinestone
DL "https://photo.yupoo.com/lol2021/28244f0f/medium.jpg"   "gc_5.jpg"   # White Leather
DL "https://photo.yupoo.com/lol2021/dd6dc0d0/medium.jpg"   "gc_6.jpg"   # White Beige Pink
DL "https://photo.yupoo.com/lol2021/33d59690/medium.jpg"   "gc_7.jpg"   # White Blue
DL "https://photo.yupoo.com/lol2021/cdb09086/medium.jpg"   "gc_8.jpg"   # Blue Grey
DL "https://photo.yupoo.com/lol2021/fe66ad27/medium.jpg"   "gc_9.jpg"   # Light Pink

# LV Sneakers (SK8)
Write-Host "`n[LV Sneakers]"
DL "https://photo.yupoo.com/lol2021/28f44e11/medium.jpg"   "lvs_1.jpg"  # SK8 Green White
DL "https://photo.yupoo.com/lol2021/fcf51958/medium.jpg"   "lvs_2.jpg"  # SK8 Purple White
DL "https://photo.yupoo.com/lol2021/c59130ea/medium.jpg"   "lvs_3.jpg"  # SK8 Coffee White
DL "https://photo.yupoo.com/lol2021/1e8bf01f/medium.jpg"   "lvs_4.jpg"  # SK8 Plum Diamond Blue
DL "https://photo.yupoo.com/lol2021/f573f915/medium.jpg"   "lvs_5.jpg"  # SK8 Plum Diamond Black
DL "https://photo.yupoo.com/lol2021/bbc224ca/medium.jpg"   "lvs_6.jpg"  # SK8 Plum Diamond Purple
DL "https://photo.yupoo.com/lol2021/ff617a50/medium.jpg"   "lvs_7.jpg"  # SK8 All White

# Prada
Write-Host "`n[Prada]"
DL "https://photo.yupoo.com/lol2021/5375a7cf/medium.jpg"   "pr_1.jpg"   # Light Green
DL "https://photo.yupoo.com/lol2021/e36adfc3/medium.jpg"   "pr_2.jpg"   # Black Red Tail
DL "https://photo.yupoo.com/lol2021/839f3dc4/medium.jpg"   "pr_3.jpg"   # Rubber Grey
DL "https://photo.yupoo.com/lol2021/f13ea852/medium.jpg"   "pr_4.jpg"   # Carbon Black
DL "https://photo.yupoo.com/lol2021/1edcbbcd/medium.jpg"   "pr_5.jpg"   # Green
DL "https://photo.yupoo.com/lol2021/d14e0401/medium.jpg"   "pr_6.jpg"   # Rubber Red
DL "https://photo.yupoo.com/lol2021/c9aa5c2c/medium.jpg"   "pr_7.jpg"   # Dark Blue

# Off-White (force redownload)
1..8 | ForEach-Object { $f = "$folder\ow_$_.jpg"; if (Test-Path $f) { Remove-Item $f } }
Write-Host "`n[Off-White]"
DL "https://photo.yupoo.com/lol2021/6654865b3d/medium.jpg" "ow_1.jpg"   # Black A Low (album cover)
DL "https://photo.yupoo.com/lol2021/cf1aedc3cf/small.jpg"  "ow_2.jpg"   # White A Low
DL "https://photo.yupoo.com/lol2021/a7a4bbbe/small.jpg"    "ow_3.jpg"   # Black White Red Runner
DL "https://photo.yupoo.com/lol2021/6bc50600/small.jpg"    "ow_4.jpg"   # Coffee Brown Runner
DL "https://photo.yupoo.com/lol2021/d8f67994/small.jpg"    "ow_5.jpg"   # Yellow Grey Runner
DL "https://photo.yupoo.com/lol2021/ef392c39/small.jpg"    "ow_6.jpg"   # Beige ODSY
DL "https://photo.yupoo.com/lol2021/3acd282d/small.jpg"    "ow_7.jpg"   # White Grey ODSY
DL "https://photo.yupoo.com/lol2021/47cb8233/small.jpg"    "ow_8.jpg"   # Pink Blue Runner

# Nike Air Force 1
Write-Host "`n[Nike Air Force 1]"
DL "https://photo.yupoo.com/vivian666/6d122991/medium.jpeg" "af1_1.jpg"  # Classic White CW2288
DL "https://photo.yupoo.com/vivian666/c33f9e60/medium.jpeg" "af1_2.jpg"  # White 07
DL "https://photo.yupoo.com/vivian666/2662c7da/medium.jpeg" "af1_3.jpg"  # Wheat CZ0377
DL "https://photo.yupoo.com/vivian666/f5f8da5b/medium.jpeg" "af1_4.jpg"  # Black DH2920
DL "https://photo.yupoo.com/vivian666/5885b8c5/medium.jpeg" "af1_5.jpg"  # Bugs Bunny
DL "https://photo.yupoo.com/vivian666/8adcad42/medium.jpeg" "af1_6.jpg"  # DQ7582
DL "https://photo.yupoo.com/vivian666/ef38cdc9/medium.jpeg" "af1_7.jpg"  # FB8876 Green
DL "https://photo.yupoo.com/vivian666/222afadb/medium.jpeg" "af1_8.jpg"  # DZ4514

# Lanvin
Write-Host "`n[Lanvin]"
DL "https://photo.yupoo.com/lol2021/a1fd0028/medium.jpg"   "lan_1.jpg"  # Blue Grey
DL "https://photo.yupoo.com/lol2021/a89dc9ee/medium.jpg"   "lan_2.jpg"  # Grey
DL "https://photo.yupoo.com/lol2021/d43a66f4/medium.jpg"   "lan_3.jpg"  # White
DL "https://photo.yupoo.com/lol2021/fec81ebf/medium.jpg"   "lan_4.jpg"  # White Ribbon
DL "https://photo.yupoo.com/lol2021/6f547839/medium.jpg"   "lan_5.jpg"  # Beige

# BAPE x Crocs
Write-Host "`n[BAPE x Crocs]"
DL "https://photo.yupoo.com/lol2021/3dff81b1/medium.jpg"   "sl_crocs_1.jpg" # Pink
DL "https://photo.yupoo.com/lol2021/6150ed4b/medium.jpg"   "sl_crocs_2.jpg" # Blue
DL "https://photo.yupoo.com/lol2021/9c21f1c4/medium.jpg"   "sl_crocs_3.jpg" # Green
DL "https://photo.yupoo.com/lol2021/e0a98a0b/medium.jpg"   "sl_crocs_4.jpg" # Black

# LV Slides
Write-Host "`n[LV Slides]"
DL "https://photo.yupoo.com/lol2021/3b96a25d/medium.jpg"   "sl_lv_1.jpg"    # Miami Velcro
DL "https://photo.yupoo.com/lol2021/ab09d50e/medium.jpg"   "sl_lv_2.jpg"    # Cosy Comfort Grey
DL "https://photo.yupoo.com/lol2021/c2648a47/medium.jpg"   "sl_lv_3.jpg"    # Cosy Comfort Pink
DL "https://photo.yupoo.com/lol2021/9c1c6d18/medium.jpg"   "sl_lv_4.jpg"    # Cosy Comfort Blue
DL "https://photo.yupoo.com/lol2021/c1f77868/medium.jpg"   "sl_lv_5.jpg"    # Open Toe White
DL "https://photo.yupoo.com/lol2021/46fd0c92/medium.jpg"   "sl_lv_6.jpg"    # Open Toe Dark Grey
DL "https://photo.yupoo.com/lol2021/3c4d7a46/medium.jpg"   "sl_lv_7.jpg"    # Open Toe Black

# Nike Mind 001 - dodatne boje
Write-Host "`n[Nike Slides - dodatne boje]"
DL "https://photo.yupoo.com/lol2021/da589bcc65/medium.jpg" "sl_nik_6.jpg"   # White Speed Red
DL "https://photo.yupoo.com/lol2021/58dc33f6cc/medium.jpg" "sl_nik_7.jpg"   # Pearl Pink
DL "https://photo.yupoo.com/lol2021/0589b3d01f/medium.jpg" "sl_nik_8.jpg"   # Blackened Blue
DL "https://photo.yupoo.com/lol2021/effef4c047/medium.jpg" "sl_nik_9.jpg"   # Geode Teal
DL "https://photo.yupoo.com/lol2021/b42dc56807/medium.jpg" "sl_nik_10.jpg"  # Team Red

# Asics Gel-Kayano 14
Write-Host "`n[Asics Gel-Kayano 14]"
DL "https://photo.yupoo.com/summer-original/000a9ad7/medium.jpg" "as_kayo_1.jpg"  # White/Silver/Golden
DL "https://photo.yupoo.com/summer-original/1f2d3521/medium.jpg" "as_kayo_2.jpg"  # White/Silver/Grey
DL "https://photo.yupoo.com/summer-original/d48a3655/medium.jpg" "as_kayo_3.jpg"  # colorway
DL "https://photo.yupoo.com/summer-original/06b7bf9b/medium.jpg" "as_kayo_4.jpg"  # White/Dark Grape
DL "https://photo.yupoo.com/summer-original/c8768f37/medium.jpg" "as_kayo_5.jpg"  # White/Silver/Classic Red

# Asics Gel-NYC
Write-Host "`n[Asics Gel-NYC]"
DL "https://photo.yupoo.com/summer-original/c6d22522/medium.jpg" "as_nyc_1.jpg"  # White/Smoke Grey
DL "https://photo.yupoo.com/summer-original/6b7cda1b/medium.jpg" "as_nyc_2.jpg"  # colorway
DL "https://photo.yupoo.com/summer-original/e37dd78e/medium.jpg" "as_nyc_3.jpg"  # colorway
DL "https://photo.yupoo.com/summer-original/ef8d9819/medium.jpg" "as_nyc_4.jpg"  # colorway
DL "https://photo.yupoo.com/summer-original/06f79e80/medium.jpg" "as_nyc_5.jpg"  # colorway
DL "https://photo.yupoo.com/summer-original/0b34e7ac42/medium.jpg" "as_nyc_6.jpg" # Coffee/Dark Gray

# Asics Gel-1130
Write-Host "`n[Asics Gel-1130]"
DL "https://photo.yupoo.com/summer-original/9502defa/medium.jpg" "as_1130_1.jpg"  # Silver/White/Blue
DL "https://photo.yupoo.com/summer-original/d44bfaed/medium.jpg" "as_1130_2.jpg"  # colorway
DL "https://photo.yupoo.com/summer-original/19b9faed/medium.jpg" "as_1130_3.jpg"  # colorway
DL "https://photo.yupoo.com/summer-original/26000a49/medium.jpg" "as_1130_4.jpg"  # colorway

# Ocisti stare krive slike
Write-Host "`nBrisanje starih krivih slika..." -ForegroundColor Yellow
@("nk","hk","ds") | ForEach-Object {
    $prefix = $_
    1..12 | ForEach-Object {
        $f = "$folder\${prefix}_$_.jpg"
        if (Test-Path $f) { Remove-Item $f; Write-Host "  obrisano: ${prefix}_$_.jpg" -ForegroundColor DarkGray }
    }
}
# Ocisti stare am_ slike (zamijenjene s j4_)
1..12 | ForEach-Object {
    $f = "$folder\am_$_.jpg"
    if (Test-Path $f) { Remove-Item $f; Write-Host "  obrisano: am_$_.jpg" -ForegroundColor DarkGray }
}

$count = (Get-ChildItem $folder -File).Count
Write-Host "`nGotovo! Ukupno slika: $count u: $folder" -ForegroundColor Cyan
Write-Host "Pritisni Enter za zatvaranje..."
Read-Host
