.class public final Lcom/byazt/w/sp$27;
.super Lcom/byazt/c/or$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x719
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/zz/my;)Lcom/byazt/c/or;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zz/my;


# direct methods
.method public constructor <init>(Lcom/byazt/zz/my;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$27;->c:Lcom/byazt/zz/my;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/c/or$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(II)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$27;->c:Lcom/byazt/zz/my;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/my;->c(II)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method
