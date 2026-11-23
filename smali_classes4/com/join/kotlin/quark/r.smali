.class public final synthetic Lcom/join/kotlin/quark/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$d;


# instance fields
.field public final synthetic a:Lcom/join/kotlin/quark/adapter/SearchResultAdapter;

.field public final synthetic b:Lcom/join/kotlin/quark/QuarkSearchResultActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/quark/adapter/SearchResultAdapter;Lcom/join/kotlin/quark/QuarkSearchResultActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/quark/r;->a:Lcom/join/kotlin/quark/adapter/SearchResultAdapter;

    iput-object p2, p0, Lcom/join/kotlin/quark/r;->b:Lcom/join/kotlin/quark/QuarkSearchResultActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/r;->a:Lcom/join/kotlin/quark/adapter/SearchResultAdapter;

    iget-object v1, p0, Lcom/join/kotlin/quark/r;->b:Lcom/join/kotlin/quark/QuarkSearchResultActivity;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/join/kotlin/quark/QuarkSearchResultActivity;->m(Lcom/join/kotlin/quark/adapter/SearchResultAdapter;Lcom/join/kotlin/quark/QuarkSearchResultActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
