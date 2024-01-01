# blabbermac
A client app to make a Mac download a remote file and speak its contents. It supports the following
features through options set in the file that is downloaded:
- Enable/disable speaking
- Set voice to any supported voice


## Installation
There are three pieces you need to use this system. This section describes how to set up each piece.

### Server
1. Place a file with the text to be spoken and the desired configuration options on a server you
   control. This can be any web server or even an S3 bucket. See below for the file format.

### Client
1. Clone this repository to the Mac you wish to run it on.
2. Replace the value of `REMOTE_FILE_URL` in blabbermac.sh with the link to a remote file containing
   the contents to be spoken. See below for the file format.
3. (Optional) Copy blabbermac.sh to any location on the machine that suits you.

### Cron job (Optional)
1. If you wish to schedule this program, simply add a cron job that runs it on whatever schedule you
   like. This can be used to make your Mac speak anything at any time, with a minute or less of
   delay. For help with writing cron jobs, see [crontab.guru](crontab.guru).


## File format
```
[dewit flag]
(voice)
[text to speak]
```

### dewit flag
- Type: boolean
- Allowed Values: 0 or 1

### voice (optional)
- Type: string
- Allowed Values: There are several voices that can be used in modern versions of macOS. See below
for a list of voices. **If no voice is selected, this line must be left blank** and the default
voice will be used.

| Voice     | Localization |
|-----------|--------------|
| Albert    | en_US        |
| Alice     | it_IT        |
| Alva      | sv_SE        |
| Amélie    | fr_CA        |
| Amira     | ms_MY        |
| Anna      | de_DE        |
| Bad News  | en_US        |
| Bahh      | en_US        |
| Bells     | en_US        |
| Boing     | en_US        |
| Bubbles   | en_US        |
| Carmit    | he_IL        |
| Cellos    | en_US        |
| Damayanti | id_ID        |
| Daniel    | en_GB        |
| Daria     | bg_BG        |
| Wobble    | en_US        |
| Ellen     | nl_BE        |
| Fred      | en_US        |
| Good News | en_US        |
| Jester    | en_US        |
| Ioana     | ro_RO        |
| Jacques   | fr_FR        |
| Joana     | pt_PT        |
| Junior    | en_US        |
| Kanya     | th_TH        |
| Karen     | en_AU        |
| Kathy     | en_US        |
| Kyoko     | ja_JP        |
| Lana      | hr_HR        |
| Laura     | sk_SK        |
| Lekha     | hi_IN        |
| Lesya     | uk_UA        |
| Linh      | vi_VN        |
| Luciana   | pt_BR        |
| Majed     | ar_001       |
| Tünde     | hu_HU        |
| Meijia    | zh_TW        |
| Melina    | el_GR        |
| Milena    | ru_RU        |
| Moira     | en_IE        |
| Mónica    | es_ES        |
| Montse    | ca_ES        |
| Nora      | nb_NO        |
| Organ     | en_US        |
| Paulina   | es_MX        |
| Superstar | en_US        |
| Ralph     | en_US        |
| Rishi     | en_IN        |
| Samantha  | en_US        |
| Sara      | da_DK        |
| Satu      | fi_FI        |
| Sinji     | zh_HK        |
| Tessa     | en_ZA        |
| Thomas    | fr_FR        |
| Tingting  | zh_CN        |
| Trinoids  | en_US        |
| Whisper   | en_US        |
| Xander    | nl_NL        |
| Yelda     | tr_TR        |
| Yuna      | ko_KR        |
| Zarvox    | en_US        |
| Zosia     | pl_PL        |
| Zuzana    | cs_CZ        |




Old voices (before macOS Ventura)

| Voice     | Localization |
|-----------|--------------|
| Alex      | en_US        |
| Alice     | it_IT        |
| Alva      | sv_SE        |
| Amelie    | fr_CA        |
| Anna      | de_DE        |
| Carmit    | he_IL        |
| Damayanti | id_ID        |
| Daniel    | en_GB        |
| Diego     | es_AR        |
| Ellen     | nl_BE        |
| Fiona     | en-scotland  |
| Fred      | en_US        |
| Ioana     | ro_RO        |
| Joana     | pt_PT        |
| Jorge     | es_ES        |
| Juan      | es_MX        |
| Kanya     | th_TH        |
| Karen     | en_AU        |
| Kyoko     | ja_JP        |
| Laura     | sk_SK        |
| Lekha     | hi_IN        |
| Luca      | it_IT        |
| Luciana   | pt_BR        |
| Maged     | ar_SA        |
| Mariska   | hu_HU        |
| Mei-Jia   | zh_TW        |
| Melina    | el_GR        |
| Milena    | ru_RU        |
| Moira     | en_IE        |
| Monica    | es_ES        |
| Nora      | nb_NO        |
| Paulina   | es_MX        |
| Rishi     | en_IN        |
| Samantha  | en_US        |
| Sara      | da_DK        |
| Satu      | fi_FI        |
| Sin-ji    | zh_HK        |
| Tessa     | en_ZA        |
| Thomas    | fr_FR        |
| Ting-Ting | zh_CN        |
| Veena     | en_IN        |
| Victoria  | en_US        |
| Xander    | nl_NL        |
| Yelda     | tr_TR        |
| Yuna      | ko_KR        |
| Yuri      | ru_RU        |
| Zosia     | pl_PL        |
| Zuzana    | cs_CZ        |

### text to speak
- Type: string
- Value: Any alphanumeric string
