.class public Lorg/apache/http/impl/cookie/BestMatchSpecHC4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpec;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private compat:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

.field private final datepatterns:[Ljava/lang/String;

.field private obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

.field private final oneHeader:Z

.field private strict:Lorg/apache/http/impl/cookie/RFC2965SpecHC4;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->datepatterns:[Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->oneHeader:Z

    return-void
.end method

.method private getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->datepatterns:[Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    .line 15
    .line 16
    return-object v0
.end method

.method private getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->datepatterns:[Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v2, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->oneHeader:Z

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;-><init>([Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    .line 17
    .line 18
    return-object v0
.end method

.method private getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->strict:Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->datepatterns:[Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v2, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->oneHeader:Z

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;-><init>([Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->strict:Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->strict:Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "List of cookies"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lorg/apache/http/cookie/Cookie;

    .line 25
    .line 26
    instance-of v4, v3, Lorg/apache/http/cookie/SetCookie2;

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    :cond_1
    invoke-interface {v3}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v4, v1, :cond_0

    .line 36
    .line 37
    invoke-interface {v3}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-lez v1, :cond_4

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->formatCookies(Ljava/util/List;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_3
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->formatCookies(Ljava/util/List;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_4
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->formatCookies(Ljava/util/List;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public getVersion()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->getVersion()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->getVersionHeader()Lorg/apache/http/Header;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1

    .line 1
    const-string v0, "Cookie"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "Cookie origin"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_1
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 1
    const-string v0, "Header"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "Cookie origin"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_0
    const/4 v6, 0x1

    .line 21
    if-ge v3, v1, :cond_2

    .line 22
    .line 23
    aget-object v7, v0, v3

    .line 24
    .line 25
    const-string v8, "version"

    .line 26
    .line 27
    invoke-interface {v7, v8}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    if-eqz v8, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    :cond_0
    const-string v8, "expires"

    .line 35
    .line 36
    invoke-interface {v7, v8}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    if-nez v4, :cond_5

    .line 47
    .line 48
    if-nez v5, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const-string v1, "Set-Cookie2"

    .line 52
    .line 53
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, v0, p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_4
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, v0, p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :cond_5
    :goto_1
    sget-object v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;

    .line 82
    .line 83
    instance-of v1, p1, Lorg/apache/http/FormattedHeader;

    .line 84
    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    check-cast p1, Lorg/apache/http/FormattedHeader;

    .line 88
    .line 89
    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v3, Lorg/apache/http/message/ParserCursor;

    .line 94
    .line 95
    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-direct {v3, p1, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_7

    .line 112
    .line 113
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-direct {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v3, Lorg/apache/http/message/ParserCursor;

    .line 126
    .line 127
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-direct {v3, v2, p1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 132
    .line 133
    .line 134
    :goto_2
    new-array p1, v6, [Lorg/apache/http/HeaderElement;

    .line 135
    .line 136
    invoke-virtual {v0, v1, v3}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    aput-object v0, p1, v2

    .line 141
    .line 142
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1

    .line 151
    :cond_7
    new-instance p1, Lorg/apache/http/cookie/MalformedCookieException;

    .line 152
    .line 153
    const-string p2, "Header value is null"

    .line 154
    .line 155
    invoke-direct {p1, p2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "best-match"

    return-object v0
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 1
    const-string v0, "Cookie"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "Cookie origin"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method
