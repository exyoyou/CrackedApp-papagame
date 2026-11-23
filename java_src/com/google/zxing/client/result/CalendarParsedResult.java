package com.google.zxing.client.result;

/* JADX INFO: loaded from: classes5.dex */
public final class CalendarParsedResult extends ParsedResult {
    private final String attendee;
    private final String description;
    private final String end;
    private final double latitude;
    private final String location;
    private final double longitude;
    private final String start;
    private final String summary;

    public CalendarParsedResult(String str, String str2, String str3, String str4, String str5, String str6) {
        this(str, str2, str3, str4, str5, str6, Double.NaN, Double.NaN);
    }

    private static void validateDate(CharSequence charSequence) {
        if (charSequence != null) {
            int length = charSequence.length();
            if (length != 8 && length != 15 && length != 16) {
                throw new IllegalArgumentException();
            }
            for (int i10 = 0; i10 < 8; i10++) {
                if (!Character.isDigit(charSequence.charAt(i10))) {
                    throw new IllegalArgumentException();
                }
            }
            if (length > 8) {
                if (charSequence.charAt(8) != 'T') {
                    throw new IllegalArgumentException();
                }
                for (int i11 = 9; i11 < 15; i11++) {
                    if (!Character.isDigit(charSequence.charAt(i11))) {
                        throw new IllegalArgumentException();
                    }
                }
                if (length == 16 && charSequence.charAt(15) != 'Z') {
                    throw new IllegalArgumentException();
                }
            }
        }
    }

    public String getAttendee() {
        return this.attendee;
    }

    public String getDescription() {
        return this.description;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb2 = new StringBuilder(100);
        ParsedResult.maybeAppend(this.summary, sb2);
        ParsedResult.maybeAppend(this.start, sb2);
        ParsedResult.maybeAppend(this.end, sb2);
        ParsedResult.maybeAppend(this.location, sb2);
        ParsedResult.maybeAppend(this.attendee, sb2);
        ParsedResult.maybeAppend(this.description, sb2);
        return sb2.toString();
    }

    public String getEnd() {
        return this.end;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public String getLocation() {
        return this.location;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getStart() {
        return this.start;
    }

    public String getSummary() {
        return this.summary;
    }

    public CalendarParsedResult(String str, String str2, String str3, String str4, String str5, String str6, double d10, double d11) {
        super(ParsedResultType.CALENDAR);
        validateDate(str2);
        this.summary = str;
        this.start = str2;
        if (str3 != null) {
            validateDate(str3);
            this.end = str3;
        } else {
            this.end = null;
        }
        this.location = str4;
        this.attendee = str5;
        this.description = str6;
        this.latitude = d10;
        this.longitude = d11;
    }
}
