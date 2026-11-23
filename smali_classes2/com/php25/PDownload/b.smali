.class public final Lcom/php25/PDownload/b;
.super Lcom/php25/PDownload/a;
.source "SourceFile"


# static fields
.field private static d:Lcom/php25/PDownload/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/php25/PDownload/a;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/php25/PDownload/b;->b:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "rootFragment"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/php25/PDownload/a;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/php25/PDownload/b;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/php25/PDownload/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public static i(Landroid/content/Context;)Lcom/php25/PDownload/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/php25/PDownload/b;->d:Lcom/php25/PDownload/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/php25/PDownload/b;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v1, p0}, Lcom/php25/PDownload/b;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/php25/PDownload/b;->d:Lcom/php25/PDownload/b;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/php25/PDownload/b;->j()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object p0, Lcom/php25/PDownload/b;->d:Lcom/php25/PDownload/b;

    .line 28
    .line 29
    return-object p0
.end method

.method private j()V
    .locals 0

    .line 1
    return-void
.end method
