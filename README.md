# PermateAttributionSDK — Binary distribution (SPM)

Package.swift ở branch này khai báo `binaryTarget`, dùng để phân phối SDK dưới dạng
`.xcframework` đã build sẵn, thay vì source code.

⚠️ **Bản hiện tại là bản preview** (URL zip có kèm commit SHA, host tạm ở
`sdk.dev.permate.com/ios/previews/...`). Chỉ dùng để test quy trình tích hợp qua SPM — cần thay
bằng URL release ổn định theo version trước khi gửi cho brand chính thức.

## Cách tích hợp (cho brand)

1. Xcode → File → Add Package Dependencies.
2. Dán URL của repo này.
3. Chọn version (tag), ví dụ `1.0.0`.
4. `import PermateAttributionSDK` trong code.

## Cách phát hành bản mới

1. Build `.xcframework`, nén `.zip`, host lên URL công khai/được cấp quyền cho brand truy cập.
2. Tính checksum: `swift package compute-checksum <file>.zip`.
3. Cập nhật `url` + `checksum` trong `Package.swift` trên branch này.
4. Commit + tag version mới (semver, ví dụ `1.1.0`) + push kèm tag.
