.class public final synthetic Lcom/join/kotlin/ui/gameexpress/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/l;->b:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/l;->b:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;->z(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;Landroid/view/View;)V

    return-void
.end method
