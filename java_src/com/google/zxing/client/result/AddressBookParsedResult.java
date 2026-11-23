package com.google.zxing.client.result;

/* JADX INFO: loaded from: classes5.dex */
public final class AddressBookParsedResult extends ParsedResult {
    private final String[] addressTypes;
    private final String[] addresses;
    private final String birthday;
    private final String[] emailTypes;
    private final String[] emails;
    private final String instantMessenger;
    private final String[] names;
    private final String note;

    /* JADX INFO: renamed from: org, reason: collision with root package name */
    private final String f32803org;
    private final String[] phoneNumbers;
    private final String[] phoneTypes;
    private final String pronunciation;
    private final String title;
    private final String url;

    public AddressBookParsedResult(String[] strArr, String str, String[] strArr2, String[] strArr3, String[] strArr4, String[] strArr5, String str2, String str3, String[] strArr6, String[] strArr7, String str4, String str5, String str6, String str7) {
        super(ParsedResultType.ADDRESSBOOK);
        this.names = strArr;
        this.pronunciation = str;
        this.phoneNumbers = strArr2;
        this.phoneTypes = strArr3;
        this.emails = strArr4;
        this.emailTypes = strArr5;
        this.instantMessenger = str2;
        this.note = str3;
        this.addresses = strArr6;
        this.addressTypes = strArr7;
        this.f32803org = str4;
        this.birthday = str5;
        this.title = str6;
        this.url = str7;
    }

    public String[] getAddressTypes() {
        return this.addressTypes;
    }

    public String[] getAddresses() {
        return this.addresses;
    }

    public String getBirthday() {
        return this.birthday;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb2 = new StringBuilder(100);
        ParsedResult.maybeAppend(this.names, sb2);
        ParsedResult.maybeAppend(this.pronunciation, sb2);
        ParsedResult.maybeAppend(this.title, sb2);
        ParsedResult.maybeAppend(this.f32803org, sb2);
        ParsedResult.maybeAppend(this.addresses, sb2);
        ParsedResult.maybeAppend(this.phoneNumbers, sb2);
        ParsedResult.maybeAppend(this.emails, sb2);
        ParsedResult.maybeAppend(this.instantMessenger, sb2);
        ParsedResult.maybeAppend(this.url, sb2);
        ParsedResult.maybeAppend(this.birthday, sb2);
        ParsedResult.maybeAppend(this.note, sb2);
        return sb2.toString();
    }

    public String[] getEmailTypes() {
        return this.emailTypes;
    }

    public String[] getEmails() {
        return this.emails;
    }

    public String getInstantMessenger() {
        return this.instantMessenger;
    }

    public String[] getNames() {
        return this.names;
    }

    public String getNote() {
        return this.note;
    }

    public String getOrg() {
        return this.f32803org;
    }

    public String[] getPhoneNumbers() {
        return this.phoneNumbers;
    }

    public String[] getPhoneTypes() {
        return this.phoneTypes;
    }

    public String getPronunciation() {
        return this.pronunciation;
    }

    public String getTitle() {
        return this.title;
    }

    public String getURL() {
        return this.url;
    }
}
