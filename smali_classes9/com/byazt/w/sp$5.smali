.class public final Lcom/byazt/w/sp$5;
.super Lcom/byazt/c/n$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x252
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/zz/x;)Lcom/byazt/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zz/x;


# direct methods
.method public constructor <init>(Lcom/byazt/zz/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$5;->c:Lcom/byazt/zz/x;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/c/n$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$5;->c:Lcom/byazt/zz/x;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/byazt/zz/x;->c(J)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
