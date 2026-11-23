.class public Lcom/byazt/er/tt;
.super Lcom/byazt/uk/uj$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3c4,
        0xd
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/uk/yp;


# direct methods
.method public constructor <init>(Lcom/byazt/uk/yp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/uk/uj$c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/er/tt;->c:Lcom/byazt/uk/yp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/er/tt;->c:Lcom/byazt/uk/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/uk/yp;->c(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
