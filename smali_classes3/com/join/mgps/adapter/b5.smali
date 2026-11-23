.class public final synthetic Lcom/join/mgps/adapter/b5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/o5;

.field public final synthetic c:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/b5;->b:Lcom/join/mgps/adapter/o5;

    iput-object p2, p0, Lcom/join/mgps/adapter/b5;->c:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b5;->b:Lcom/join/mgps/adapter/o5;

    iget-object v1, p0, Lcom/join/mgps/adapter/b5;->c:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/o5;->k(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method
