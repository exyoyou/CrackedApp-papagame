.class public final Lcom/byazt/utw/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c2,
        0xf
    }
.end annotation


# static fields
.field public static volatile a:Z = false

.field public static volatile c:Lcom/byazt/byh/tt; = null

.field public static volatile da:Lcom/byazt/emg/ve; = null

.field public static volatile i:I = 0x0

.field public static final n:Z

.field public static volatile sl:Landroid/content/Context; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static volatile sp:Z = false

.field public static volatile tt:Lcom/byazt/byh/ve; = null

.field public static volatile uj:Ljava/lang/Integer; = null

.field public static volatile ve:I = 0x3

.field public static volatile x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/nr/m;->ve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/byazt/utw/uj;->n:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lcom/byazt/utw/uj;->sp:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput v0, Lcom/byazt/utw/uj;->i:I

    .line 12
    .line 13
    return-void
.end method

.method public static c()Lcom/byazt/byh/ve;
    .locals 1

    .line 15
    sget-object v0, Lcom/byazt/utw/uj;->tt:Lcom/byazt/byh/ve;

    return-object v0
.end method

.method public static c(I)V
    .locals 0

    .line 2
    sput p0, Lcom/byazt/utw/uj;->i:I

    return-void
.end method

.method public static c(Lcom/byazt/byh/ve;Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/byazt/utw/uj;->sl:Landroid/content/Context;

    .line 4
    sget-object v0, Lcom/byazt/utw/uj;->tt:Lcom/byazt/byh/ve;

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/byazt/utw/uj;->c:Lcom/byazt/byh/tt;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, v0, Lcom/byazt/byh/tt;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/byh/ve;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DiskLruCache and DiskCache can\'t use the same dir"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    :goto_0
    sput-object p0, Lcom/byazt/utw/uj;->tt:Lcom/byazt/byh/ve;

    .line 9
    invoke-static {p1}, Lcom/byazt/emg/ve;->c(Landroid/content/Context;)Lcom/byazt/emg/ve;

    move-result-object p1

    sput-object p1, Lcom/byazt/utw/uj;->da:Lcom/byazt/emg/ve;

    .line 10
    sget-object p1, Lcom/byazt/utw/uj;->tt:Lcom/byazt/byh/ve;

    new-instance v0, Lcom/byazt/utw/uj$1;

    invoke-direct {v0}, Lcom/byazt/utw/uj$1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/byazt/byh/ve;->c(Lcom/byazt/byh/ve$c;)V

    .line 11
    invoke-static {}, Lcom/byazt/utw/ve;->c()Lcom/byazt/utw/ve;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lcom/byazt/utw/ve;->c(Lcom/byazt/byh/ve;)V

    .line 13
    sget-object p0, Lcom/byazt/utw/uj;->da:Lcom/byazt/emg/ve;

    invoke-virtual {p1, p0}, Lcom/byazt/utw/ve;->c(Lcom/byazt/emg/ve;)V

    return-void

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DiskLruCache and Context can\'t be null !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/byazt/utw/uj;->x:Z

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/utw/uj;->sl:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static tt()Lcom/byazt/byh/tt;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/utw/uj;->c:Lcom/byazt/byh/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic ve()Lcom/byazt/emg/ve;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/utw/uj;->da:Lcom/byazt/emg/ve;

    .line 2
    .line 3
    return-object v0
.end method
