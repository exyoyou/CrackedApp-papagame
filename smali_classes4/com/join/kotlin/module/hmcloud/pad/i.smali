.class public final synthetic Lcom/join/kotlin/module/hmcloud/pad/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

.field public final synthetic c:Lcom/join/mgps/dto/hmcloud/HMKeyItem;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/i;->b:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/pad/i;->c:Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    iput-object p3, p0, Lcom/join/kotlin/module/hmcloud/pad/i;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/i;->b:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/pad/i;->c:Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/pad/i;->d:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->i(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Landroid/view/View;)V

    return-void
.end method
