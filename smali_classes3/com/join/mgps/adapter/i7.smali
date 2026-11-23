.class public final synthetic Lcom/join/mgps/adapter/i7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/dto/GamedetialModleFourBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/i7;->b:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/i7;->b:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v0, p1}, Lcom/join/mgps/adapter/j7;->a(Lcom/join/mgps/dto/GamedetialModleFourBean;Landroid/view/View;)V

    return-void
.end method
