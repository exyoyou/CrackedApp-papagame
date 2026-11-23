.class public final Lcom/haima/hmcp/BuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.haima.hmcp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = "masterAndroid"

.field public static final FLAVOR_cooperator:Ljava/lang/String; = "master"

.field public static final FLAVOR_platform:Ljava/lang/String; = "android"

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.haima.hmcp"

.field public static final PRODUCT_Android:Ljava/lang/String; = "android"

.field public static final PRODUCT_MIGU:Ljava/lang/String; = "migu"

.field public static final PRODUCT_TV:Ljava/lang/String; = "tv"

.field public static final SDK_DEFAULT_LANGUAGE:Ljava/lang/String; = "zh_CN"

.field public static final SUPPORT_LANGUAGE_CONFIG_ARRAY:[Ljava/lang/String;

.field public static final VERSION_CODE:I = 0x1c71

.field public static final VERSION_NAME:Ljava/lang/String; = "7.28.1"


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-string v0, "ru_RU"

    .line 2
    .line 3
    const-string v1, "it_IT"

    .line 4
    .line 5
    const-string v2, "pl_PL"

    .line 6
    .line 7
    const-string v3, "fil_PH"

    .line 8
    .line 9
    const-string v4, "tr_TR"

    .line 10
    .line 11
    const-string v5, "bg_BG"

    .line 12
    .line 13
    const-string v6, "vi_VN"

    .line 14
    .line 15
    const-string v7, "th_TH"

    .line 16
    .line 17
    const-string v8, "ja_JP"

    .line 18
    .line 19
    const-string v9, "fr_FR"

    .line 20
    .line 21
    const-string v10, "in_ID"

    .line 22
    .line 23
    const-string v11, "de_DE"

    .line 24
    .line 25
    const-string v12, "ms_MY"

    .line 26
    .line 27
    const-string v13, "en_US"

    .line 28
    .line 29
    const-string v14, "uk_UA"

    .line 30
    .line 31
    const-string v15, "es_ES"

    .line 32
    .line 33
    const-string v16, "ar_EG"

    .line 34
    .line 35
    const-string v17, "pt_PT"

    .line 36
    .line 37
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/haima/hmcp/BuildConfig;->SUPPORT_LANGUAGE_CONFIG_ARRAY:[Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
