.class public final Lcom/byazt/w/sp$20;
.super Lcom/byazt/c/z$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x72e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/nu;)Lcom/byazt/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/nu;


# direct methods
.method public constructor <init>(Lcom/byazt/c/nu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$20;->c:Lcom/byazt/c/nu;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/c/z$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$20;->c:Lcom/byazt/c/nu;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/c/nu;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
