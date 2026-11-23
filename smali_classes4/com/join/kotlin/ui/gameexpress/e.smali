.class public final synthetic Lcom/join/kotlin/ui/gameexpress/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

.field public final synthetic c:Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/e;->b:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    iput-object p2, p0, Lcom/join/kotlin/ui/gameexpress/e;->c:Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/e;->b:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    iget-object v1, p0, Lcom/join/kotlin/ui/gameexpress/e;->c:Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;->w(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;Landroid/view/View;)V

    return-void
.end method
