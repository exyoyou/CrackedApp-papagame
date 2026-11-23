.class public final synthetic Lcom/join/kotlin/ui/gameexpress/adapter/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;

.field public final synthetic c:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;

.field public final synthetic d:Lv2/c;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;Lv2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/adapter/g;->b:Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;

    iput-object p2, p0, Lcom/join/kotlin/ui/gameexpress/adapter/g;->c:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;

    iput-object p3, p0, Lcom/join/kotlin/ui/gameexpress/adapter/g;->d:Lv2/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/adapter/g;->b:Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;

    iget-object v1, p0, Lcom/join/kotlin/ui/gameexpress/adapter/g;->c:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;

    iget-object v2, p0, Lcom/join/kotlin/ui/gameexpress/adapter/g;->d:Lv2/c;

    invoke-static {v0, v1, v2, p1}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;->l(Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;Lv2/c;Landroid/view/View;)V

    return-void
.end method
