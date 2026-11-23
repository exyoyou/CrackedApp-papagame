.class public Lcom/sdk/x/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/x/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:J

.field public c:I

.field public d:Lcom/sdk/base/api/CallBackTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/base/api/CallBackTimeOut<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sdk/x/a;JILcom/sdk/base/api/CallBackTimeOut;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/sdk/base/api/CallBackTimeOut<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sdk/x/a$d;->a:Landroid/os/Handler;

    iput-wide p2, p0, Lcom/sdk/x/a$d;->b:J

    iput p4, p0, Lcom/sdk/x/a$d;->c:I

    iput-object p5, p0, Lcom/sdk/x/a$d;->d:Lcom/sdk/base/api/CallBackTimeOut;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sdk/x/a$d;->d:Lcom/sdk/base/api/CallBackTimeOut;

    iget v1, p0, Lcom/sdk/x/a$d;->c:I

    const/4 v2, 0x1

    const-string v3, ""

    invoke-interface {v0, v2, v1, v3}, Lcom/sdk/base/api/CallBackTimeOut;->timeout(IILjava/lang/String;)V

    return-void
.end method
