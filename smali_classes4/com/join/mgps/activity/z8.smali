.class public final synthetic Lcom/join/mgps/activity/z8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/z8;->a:Lcom/join/mgps/activity/SearchHintActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/z8;->a:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-static {v0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->k(Lcom/join/mgps/activity/SearchHintActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
