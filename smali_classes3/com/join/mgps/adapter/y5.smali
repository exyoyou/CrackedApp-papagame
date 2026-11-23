.class public final synthetic Lcom/join/mgps/adapter/y5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/f6;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/f6;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/y5;->b:Lcom/join/mgps/adapter/f6;

    iput-object p2, p0, Lcom/join/mgps/adapter/y5;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y5;->b:Lcom/join/mgps/adapter/f6;

    iget-object v1, p0, Lcom/join/mgps/adapter/y5;->c:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/f6;->F(Lcom/join/mgps/adapter/f6;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method
