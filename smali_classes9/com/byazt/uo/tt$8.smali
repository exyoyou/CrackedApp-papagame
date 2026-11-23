.class public Lcom/byazt/uo/tt$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/but/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x2df
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/tt;->yp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/uo/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/tt$8;->c:Lcom/byazt/uo/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/tt$8;->c:Lcom/byazt/uo/tt;

    invoke-virtual {v0}, Lcom/byazt/uo/c;->uj()V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/tt$8;->c:Lcom/byazt/uo/tt;

    invoke-static {v0}, Lcom/byazt/uo/tt;->c(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/uo/tt$8;->c:Lcom/byazt/uo/tt;

    invoke-static {v0}, Lcom/byazt/uo/tt;->c(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/NativeExpressView;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/uo/tt$8;->c:Lcom/byazt/uo/tt;

    iget v1, v1, Lcom/byazt/uo/c;->t:I

    invoke-virtual {v0, v1, p1}, Lcom/byazt/ouz/NativeExpressView;->c(II)V

    :cond_0
    return-void
.end method
