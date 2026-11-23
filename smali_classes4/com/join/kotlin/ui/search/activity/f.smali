.class public final synthetic Lcom/join/kotlin/ui/search/activity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$d;


# instance fields
.field public final synthetic a:Lcom/join/mgps/dto/ExtBean;

.field public final synthetic b:Lcom/join/kotlin/ui/search/activity/CollectionSearchListGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dto/ExtBean;Lcom/join/kotlin/ui/search/activity/CollectionSearchListGameActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/search/activity/f;->a:Lcom/join/mgps/dto/ExtBean;

    iput-object p2, p0, Lcom/join/kotlin/ui/search/activity/f;->b:Lcom/join/kotlin/ui/search/activity/CollectionSearchListGameActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/activity/f;->a:Lcom/join/mgps/dto/ExtBean;

    iget-object v1, p0, Lcom/join/kotlin/ui/search/activity/f;->b:Lcom/join/kotlin/ui/search/activity/CollectionSearchListGameActivity;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/join/kotlin/ui/search/activity/CollectionSearchListGameActivity;->j(Lcom/join/mgps/dto/ExtBean;Lcom/join/kotlin/ui/search/activity/CollectionSearchListGameActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
