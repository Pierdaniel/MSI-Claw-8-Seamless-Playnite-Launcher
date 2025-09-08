# Security Policy

## Supported Versions
This project is shared **as-is**. There are no official releases or supported versions.  
Any use, modification, or distribution is at your own risk.

## Reporting a Vulnerability
If you discover a security issue related to this project:
- Please open a **private discussion** or contact me directly instead of creating a public issue.
- Keep in mind this project is experimental and designed for personal use.  
- Vulnerability reports will be reviewed, but fixes are **not guaranteed**.

## Known Risks
- The launcher relies on modifying the **Windows Registry** (e.g., autologon keys).  
  - Storing Windows credentials in the registry may reduce system security.  
  - Changes to `Winlogon` and `Shell` settings can cause login or stability issues.
- By using this project, you accept these risks.

## Disclaimer
This software is provided **“as is”**, without warranty of any kind.  
The author is **not responsible** for:
- Data loss  
- Credential exposure  
- System instability or boot failures  
- Any damage resulting from use or misuse of this code
