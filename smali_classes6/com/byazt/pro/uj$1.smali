.class public Lcom/byazt/pro/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/un/NativeVideoTsView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc7,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pro/uj;->inflate(Landroid/content/Context;)Lcom/byazt/un/NativeVideoTsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pro/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/pro/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/uj$1;->c:Lcom/byazt/pro/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj$1;->c:Lcom/byazt/pro/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getInteractionManager()Lcom/byazt/omf/my;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/pro/uj$1;->c:Lcom/byazt/pro/uj;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/pro/uj;->c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getInteractionManager()Lcom/byazt/omf/my;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/byazt/omf/my;->c(Landroid/view/View;I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
