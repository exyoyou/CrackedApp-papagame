.class public final synthetic Lcom/join/kotlin/autocode/dailyfind/adapter/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/e;->b:Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/e;->b:Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;

    invoke-static {v0, p1}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$2;->a(Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;Landroid/view/View;)V

    return-void
.end method
