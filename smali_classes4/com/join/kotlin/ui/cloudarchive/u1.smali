.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic h:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/ImageView;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/widget/TextView;Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->c:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p4, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->e:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->f:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p7, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->h:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->f:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v6, p0, Lcom/join/kotlin/ui/cloudarchive/u1;->h:Landroid/widget/ImageView;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRun$1;->d(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/ImageView;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/widget/TextView;Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
