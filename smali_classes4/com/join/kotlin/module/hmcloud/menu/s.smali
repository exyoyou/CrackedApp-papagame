.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/s;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/s;->c:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/s;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/s;->c:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;

    invoke-static {v0, v1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->T(Landroid/view/ViewGroup;Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    return-void
.end method
