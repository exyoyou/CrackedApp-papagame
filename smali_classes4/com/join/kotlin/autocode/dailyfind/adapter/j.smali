.class public final synthetic Lcom/join/kotlin/autocode/dailyfind/adapter/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

.field public final synthetic c:I

.field public final synthetic d:Lcom/join/kotlin/autocode/dailyfind/model/DateItem;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;ILcom/join/kotlin/autocode/dailyfind/model/DateItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/j;->b:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    iput p2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/j;->c:I

    iput-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/j;->d:Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/j;->b:Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;

    iget v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/j;->c:I

    iget-object v2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/j;->d:Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    invoke-static {v0, v1, v2, p1}, Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;->k(Lcom/join/kotlin/autocode/dailyfind/adapter/DateStripAdapter;ILcom/join/kotlin/autocode/dailyfind/model/DateItem;Landroid/view/View;)V

    return-void
.end method
