.class public Lcom/byazt/b/rh$1$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x947
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/b/rh$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/b/rh$1;


# direct methods
.method public constructor <init>(Lcom/byazt/b/rh$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/b/rh$1$1;->c:Lcom/byazt/b/rh$1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    const-string p1, "RetryScheduler"

    .line 2
    .line 3
    const-string v0, "network onAvailable: "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/b/rh$1$1;->c:Lcom/byazt/b/rh$1;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/byazt/b/rh$1;->c:Lcom/byazt/b/rh;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {p1, v0, v0}, Lcom/byazt/b/rh;->c(Lcom/byazt/b/rh;IZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
