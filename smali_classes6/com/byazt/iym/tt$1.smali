.class public Lcom/byazt/iym/tt$1;
.super Lcom/byazt/ouz/a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x310,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iym/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic da:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public final synthetic sl:Lcom/byazt/iym/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/iym/tt;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ILcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iym/tt$1;->sl:Lcom/byazt/iym/tt;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/byazt/iym/tt$1;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/byazt/ouz/a;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/ouz/a;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/iym/tt$1;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 5
    .line 6
    const/4 p2, 0x2

    .line 7
    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
