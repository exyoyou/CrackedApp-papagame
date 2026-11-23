.class public Lcom/byazt/jd/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5dc,
        0x5b
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/jd/sp$c;
    }
.end annotation


# static fields
.field public static final ve:Ljava/lang/Object;


# instance fields
.field public c:Lcom/byazt/jd/sp$c;

.field public tt:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/jd/sp;->ve:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Lcom/byazt/jd/sp;->tt:Landroid/content/Context;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/byazt/jd/sp;->c:Lcom/byazt/jd/sp$c;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Lcom/byazt/jd/sp$c;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/byazt/jd/sp$c;-><init>(Lcom/byazt/jd/sp;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/byazt/jd/sp;->c:Lcom/byazt/jd/sp$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static synthetic c(Lcom/byazt/jd/sp;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/jd/sp;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jd/sp;->tt:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public static synthetic tt()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/jd/sp;->ve:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public c()Lcom/byazt/jd/sp$c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/jd/sp;->c:Lcom/byazt/jd/sp$c;

    return-object v0
.end method
