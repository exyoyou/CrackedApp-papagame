.class public final synthetic Lcom/join/mgps/adapter/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/x4;

.field public final synthetic c:Lcom/join/mgps/dto/AppBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/x4;Lcom/join/mgps/dto/AppBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/w4;->b:Lcom/join/mgps/adapter/x4;

    iput-object p2, p0, Lcom/join/mgps/adapter/w4;->c:Lcom/join/mgps/dto/AppBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/w4;->b:Lcom/join/mgps/adapter/x4;

    iget-object v1, p0, Lcom/join/mgps/adapter/w4;->c:Lcom/join/mgps/dto/AppBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/x4;->a(Lcom/join/mgps/adapter/x4;Lcom/join/mgps/dto/AppBean;Landroid/view/View;)V

    return-void
.end method
