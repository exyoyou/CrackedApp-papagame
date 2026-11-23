.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic d:Lcom/kongzue/dialogx/dialogs/CustomDialog;

.field public final synthetic e:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

.field public final synthetic f:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field public final synthetic g:Lcom/papa91/wrapper/UserPrefs;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/papa91/wrapper/UserPrefs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/w1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/w1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/w1;->d:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iput-object p4, p0, Lcom/join/kotlin/ui/cloudarchive/w1;->e:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    iput-object p5, p0, Lcom/join/kotlin/ui/cloudarchive/w1;->f:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput-object p6, p0, Lcom/join/kotlin/ui/cloudarchive/w1;->g:Lcom/papa91/wrapper/UserPrefs;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/w1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/w1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/w1;->d:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/w1;->e:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/w1;->f:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/w1;->g:Lcom/papa91/wrapper/UserPrefs;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRun$1;->e(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/papa91/wrapper/UserPrefs;Landroid/view/View;)V

    return-void
.end method
