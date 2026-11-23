.class public final synthetic Lcom/join/kotlin/autocode/dailyfind/adapter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/material/tabs/TabLayout;

.field public final synthetic c:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/tabs/TabLayout;Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/b;->b:Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/b;->c:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/b;->b:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/b;->c:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    invoke-static {v0, v1}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->l(Lcom/google/android/material/tabs/TabLayout;Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;)V

    return-void
.end method
