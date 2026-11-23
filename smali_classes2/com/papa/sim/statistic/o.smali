.class public Lcom/papa/sim/statistic/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/papa/sim/statistic/o;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "phone"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/papa/sim/statistic/o;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/papa/sim/statistic/u;->g()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, ":"

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sput-object p1, Lcom/papa/sim/statistic/o;->a:Ljava/lang/String;

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/o;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/papa/sim/statistic/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/o;->b:Lcom/papa/sim/statistic/o;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/sim/statistic/o;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/o;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/papa/sim/statistic/o;->b:Lcom/papa/sim/statistic/o;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/papa/sim/statistic/o;->b:Lcom/papa/sim/statistic/o;

    .line 13
    .line 14
    return-object p0
.end method
