.class public final synthetic Lcom/join/kotlin/autocode/dailyfind/adapter/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lv2/c;

.field public final synthetic c:Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;


# direct methods
.method public synthetic constructor <init>(Lv2/c;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/d;->b:Lv2/c;

    iput-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/d;->c:Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/d;->b:Lv2/c;

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/d;->c:Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$1;->a(Lv2/c;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;Landroid/view/View;)V

    return-void
.end method
