.class public final synthetic Lcom/join/mgps/activity/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/EndGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/EndGameActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/v0;->a:Lcom/join/mgps/activity/EndGameActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/v0;->a:Lcom/join/mgps/activity/EndGameActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/join/mgps/activity/EndGameActivity;->j(Lcom/join/mgps/activity/EndGameActivity;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
