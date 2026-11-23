.class public Lcom/haima/hmcp/beans/LanguageReport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LANGUAGE_REPORT_ID:Ljava/lang/String; = "15488"

.field private static final TAG:Ljava/lang/String; = "LanguageReport"

.field private static sInstance:Lcom/haima/hmcp/beans/LanguageReport;


# instance fields
.field public isPlayBy211:Z

.field public language:Ljava/lang/String;

.field public languageConfigLevel:I

.field public final sdkDefaultLanguage:Ljava/lang/String;

.field public final supportedLanguageConfigSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public systemLanguage:Ljava/lang/String;

.field public timeZone:Ljava/lang/String;

.field public final versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/LanguageReport;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/LanguageReport;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/beans/LanguageReport;->sInstance:Lcom/haima/hmcp/beans/LanguageReport;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/haima/hmcp/beans/LanguageReport;->timeZone:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Lcom/haima/hmcp/beans/Language;->getCurrentLanguage()Lcom/haima/hmcp/beans/Language;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/Language;->getConfig()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/beans/LanguageReport;->language:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {}, Lcom/haima/hmcp/beans/Language;->getCurrentLanguageConfigLevel()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/haima/hmcp/beans/LanguageReport;->languageConfigLevel:I

    .line 32
    .line 33
    invoke-static {}, Lcom/haima/hmcp/beans/Language;->getDefaultLanguage()Lcom/haima/hmcp/beans/Language;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/Language;->getConfig()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/haima/hmcp/beans/LanguageReport;->sdkDefaultLanguage:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/haima/hmcp/beans/LanguageReport;->systemLanguage:Ljava/lang/String;

    .line 52
    .line 53
    const-string v0, "master-7.28.1-a83e5ae0"

    .line 54
    .line 55
    iput-object v0, p0, Lcom/haima/hmcp/beans/LanguageReport;->versionName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {}, Lcom/haima/hmcp/beans/Language;->getSupportedLanguageConfigSet()Ljava/util/HashSet;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/haima/hmcp/beans/LanguageReport;->supportedLanguageConfigSet:Ljava/util/HashSet;

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/LanguageReport;->isPlayBy211:Z

    .line 65
    .line 66
    return-void
.end method

.method public static getInstance()Lcom/haima/hmcp/beans/LanguageReport;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/beans/LanguageReport;->sInstance:Lcom/haima/hmcp/beans/LanguageReport;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public report()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/haima/hmcp/beans/LanguageReport;->timeZone:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Lcom/haima/hmcp/beans/Language;->getCurrentLanguage()Lcom/haima/hmcp/beans/Language;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/Language;->getConfig()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/haima/hmcp/beans/LanguageReport;->language:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {}, Lcom/haima/hmcp/beans/Language;->getCurrentLanguageConfigLevel()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/haima/hmcp/beans/LanguageReport;->languageConfigLevel:I

    .line 29
    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/haima/hmcp/beans/LanguageReport;->systemLanguage:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "report "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "LanguageReport"

    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v0, "15488"

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/LanguageReport;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public updateIsPlayBy211(Z)Lcom/haima/hmcp/beans/LanguageReport;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/beans/LanguageReport;->isPlayBy211:Z

    .line 2
    .line 3
    return-object p0
.end method
