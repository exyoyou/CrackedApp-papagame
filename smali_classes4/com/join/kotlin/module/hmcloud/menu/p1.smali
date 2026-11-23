.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/p1;->b:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/p1;->b:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsFragment;

    invoke-static {v0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsFragment;->N(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsFragment;Landroid/view/View;)V

    return-void
.end method
