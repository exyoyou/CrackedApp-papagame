.class Lcom/aggmoread/sdk/z/a/v/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/v/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/aggmoread/sdk/z/a/g/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/v/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/v/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a$d;->a:Lcom/aggmoread/sdk/z/a/v/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    const-string v0, "AIWTAG"

    const-string v1, "SPW DM"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/v/a$d;->a:Lcom/aggmoread/sdk/z/a/v/a;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/v/a;->c(Lcom/aggmoread/sdk/z/a/v/a;)V

    return-void
.end method
