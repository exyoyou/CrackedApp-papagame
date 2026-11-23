.class public final synthetic Lcom/join/kotlin/discount/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/discount/GameDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/discount/GameDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/discount/w;->b:Lcom/join/kotlin/discount/GameDetailFragment;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/w;->b:Lcom/join/kotlin/discount/GameDetailFragment;

    invoke-static {v0}, Lcom/join/kotlin/discount/GameDetailFragment;->Z(Lcom/join/kotlin/discount/GameDetailFragment;)V

    return-void
.end method
