.class public Lcom/byazt/un/uj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/un/NativeVideoTsView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x67
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/uj;->c(Lcom/byazt/un/NativeVideoTsView$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/NativeVideoTsView$c;

.field public final synthetic tt:Lcom/byazt/un/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/un/uj;Lcom/byazt/un/NativeVideoTsView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/uj$3;->tt:Lcom/byazt/un/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/un/uj$3;->c:Lcom/byazt/un/NativeVideoTsView$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/uj$3;->c:Lcom/byazt/un/NativeVideoTsView$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/un/NativeVideoTsView$c;->c(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
