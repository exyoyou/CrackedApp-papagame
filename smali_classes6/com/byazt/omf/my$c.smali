.class public Lcom/byazt/omf/my$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x3a4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/omf/my;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/byazt/ddx/n;

.field public final tt:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/byazt/ddx/n;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/omf/my$c;->c:Lcom/byazt/ddx/n;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/omf/my$c;->tt:Landroid/view/ViewGroup;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/omf/my$c;->c:Lcom/byazt/ddx/n;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/byazt/omf/my$c;->tt:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/16 p3, 0x11

    .line 10
    .line 11
    invoke-virtual {p1, p2, p3}, Lcom/byazt/ddx/n;->c(FI)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
