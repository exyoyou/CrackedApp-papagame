.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic e:Landroid/widget/ImageView;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/v1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/v1;->c:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/v1;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/join/kotlin/ui/cloudarchive/v1;->e:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/join/kotlin/ui/cloudarchive/v1;->f:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/join/kotlin/ui/cloudarchive/v1;->g:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/v1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/v1;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/v1;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/v1;->e:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/v1;->f:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/v1;->g:Landroid/widget/TextView;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRun$1;->g(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
