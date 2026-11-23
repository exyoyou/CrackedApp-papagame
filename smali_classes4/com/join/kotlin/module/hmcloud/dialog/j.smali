.class public final synthetic Lcom/join/kotlin/module/hmcloud/dialog/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/j;->b:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/dialog/j;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/j;->b:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/dialog/j;->c:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->M(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;Ljava/util/Map;Landroid/view/View;)V

    return-void
.end method
