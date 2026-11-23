.class public Lcom/byazt/omf/EmptyView$tt$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x4cc
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/EmptyView$tt;->c(Landroid/view/View;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/View;

.field public final synthetic tt:Ljava/util/Map;

.field public final synthetic ve:Lcom/byazt/omf/EmptyView$tt;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/EmptyView$tt;Landroid/view/View;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/EmptyView$tt$4;->ve:Lcom/byazt/omf/EmptyView$tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/EmptyView$tt$4;->c:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/omf/EmptyView$tt$4;->tt:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$tt$4;->ve:Lcom/byazt/omf/EmptyView$tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/omf/EmptyView$tt;->c(Lcom/byazt/omf/EmptyView$tt;)Lcom/byazt/omf/EmptyView$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/omf/EmptyView$tt$4;->c:Landroid/view/View;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/omf/EmptyView$tt$4;->tt:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/byazt/omf/EmptyView$c;->c(Landroid/view/View;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
