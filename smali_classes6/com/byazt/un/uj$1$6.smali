.class public Lcom/byazt/un/uj$1$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x7f2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/uj$1;->onVideoSizeChanged(Lcom/byazt/fk/sp;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:I

.field public final synthetic ve:Lcom/byazt/un/uj$1;


# direct methods
.method public constructor <init>(Lcom/byazt/un/uj$1;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/uj$1$6;->ve:Lcom/byazt/un/uj$1;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/un/uj$1$6;->c:I

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/un/uj$1$6;->tt:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/un/uj$1$6;->ve:Lcom/byazt/un/uj$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 4
    .line 5
    iget v1, p0, Lcom/byazt/un/uj$1$6;->c:I

    .line 6
    .line 7
    iget v2, p0, Lcom/byazt/un/uj$1$6;->tt:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/un/uj;->tt(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
