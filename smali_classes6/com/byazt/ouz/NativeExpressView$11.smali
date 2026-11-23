.class public Lcom/byazt/ouz/NativeExpressView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x52d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/xl/uj;Lcom/byazt/xl/yp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xl/uj;

.field public final synthetic tt:Lcom/byazt/xl/yp;

.field public final synthetic ve:Lcom/byazt/ouz/NativeExpressView;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/xl/uj;Lcom/byazt/xl/yp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView$11;->ve:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ouz/NativeExpressView$11;->c:Lcom/byazt/xl/uj;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ouz/NativeExpressView$11;->tt:Lcom/byazt/xl/yp;

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
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView$11;->ve:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView$11;->c:Lcom/byazt/xl/uj;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView$11;->tt:Lcom/byazt/xl/yp;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ouz/NativeExpressView;->tt(Lcom/byazt/xl/uj;Lcom/byazt/xl/yp;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
