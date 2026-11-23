.class public Lcom/byazt/z/uj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/z/uj;->tt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/z/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/z/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/z/uj$2;->c:Lcom/byazt/z/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/z/uj;->rh()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "registerDownloadReceiver tryUnRegisterTempAppInstallDownloadReceiver run inner"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/z/uj$2;->c:Lcom/byazt/z/uj;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/z/uj;->u()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/z/uj$2;->c:Lcom/byazt/z/uj;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/z/uj;->c(Lcom/byazt/z/uj;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
