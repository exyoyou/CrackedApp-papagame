.class Lcom/haima/hmcp/language/LanguageManager;
.super Lcom/haima/hmcp/language/AbsLanguageManager;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/haima/hmcp/language/LanguageManager;

.field private static final TAG:Ljava/lang/String; = "LanguageManager"

.field private static volatile sCurrentLanguage:Lcom/haima/hmcp/beans/Language;

.field private static volatile sCurrentLanguageConfigLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/language/LanguageManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/language/LanguageManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/language/LanguageManager;->INSTANCE:Lcom/haima/hmcp/language/LanguageManager;

    .line 7
    .line 8
    invoke-static {}, Lcom/haima/hmcp/beans/Language;->getDefaultLanguage()Lcom/haima/hmcp/beans/Language;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/haima/hmcp/language/LanguageManager;->sCurrentLanguage:Lcom/haima/hmcp/beans/Language;

    .line 13
    .line 14
    const/16 v0, 0x28

    .line 15
    .line 16
    sput v0, Lcom/haima/hmcp/language/LanguageManager;->sCurrentLanguageConfigLevel:I

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/language/AbsLanguageManager;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static getImpl()Lcom/haima/hmcp/language/AbsLanguageManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/language/LanguageManager;->INSTANCE:Lcom/haima/hmcp/language/LanguageManager;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getCurrentLanguage()Lcom/haima/hmcp/beans/Language;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/language/LanguageManager;->sCurrentLanguage:Lcom/haima/hmcp/beans/Language;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentLanguageConfigLevel()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "sCurrentLanguageConfigLevel = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget v1, Lcom/haima/hmcp/language/LanguageManager;->sCurrentLanguageConfigLevel:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "LanguageManager"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget v0, Lcom/haima/hmcp/language/LanguageManager;->sCurrentLanguageConfigLevel:I

    .line 26
    .line 27
    return v0
.end method

.method public updateLanguage(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/haima/hmcp/beans/Language;->getLanguageByConfig(Ljava/lang/String;)Lcom/haima/hmcp/beans/Language;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "LanguageManager"

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget v2, Lcom/haima/hmcp/language/LanguageConfig;->COMPARISON_BASE:I

    .line 10
    .line 11
    div-int v2, p3, v2

    .line 12
    .line 13
    sget v3, Lcom/haima/hmcp/language/LanguageManager;->sCurrentLanguageConfigLevel:I

    .line 14
    .line 15
    sget v4, Lcom/haima/hmcp/language/LanguageConfig;->COMPARISON_BASE:I

    .line 16
    .line 17
    div-int/2addr v3, v4

    .line 18
    if-le v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, " updateLanguage success,origin "

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    sget-object p2, Lcom/haima/hmcp/language/LanguageManager;->sCurrentLanguage:Lcom/haima/hmcp/beans/Language;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, " update to "

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, "sCurrentLanguageConfigLevel "

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    sget p2, Lcom/haima/hmcp/language/LanguageManager;->sCurrentLanguageConfigLevel:I

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p2, " ,languageConfigLevel = "

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput p3, Lcom/haima/hmcp/language/LanguageManager;->sCurrentLanguageConfigLevel:I

    .line 73
    .line 74
    sput-object v0, Lcom/haima/hmcp/language/LanguageManager;->sCurrentLanguage:Lcom/haima/hmcp/beans/Language;

    .line 75
    .line 76
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/business/ResourceManager;->updateLanguage(Lcom/haima/hmcp/beans/Language;)V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x1

    .line 84
    return p1

    .line 85
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p2, " updateLanguage fail,languageConfig is : "

    .line 94
    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, " not Support or languageConfigLevel "

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, " > sCurrentLanguageConfigLevel "

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    sget p1, Lcom/haima/hmcp/language/LanguageManager;->sCurrentLanguageConfigLevel:I

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/4 p1, 0x0

    .line 127
    return p1
.end method
