.class public final synthetic Lh6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lh6/q;

.field public final synthetic c:Lcom/join/mgps/dto/hmcloud/PictureSetting;


# direct methods
.method public synthetic constructor <init>(Lh6/q;Lcom/join/mgps/dto/hmcloud/PictureSetting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/p;->b:Lh6/q;

    iput-object p2, p0, Lh6/p;->c:Lcom/join/mgps/dto/hmcloud/PictureSetting;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh6/p;->b:Lh6/q;

    iget-object v1, p0, Lh6/p;->c:Lcom/join/mgps/dto/hmcloud/PictureSetting;

    invoke-static {v0, v1, p1}, Lh6/q;->a(Lh6/q;Lcom/join/mgps/dto/hmcloud/PictureSetting;Landroid/view/View;)V

    return-void
.end method
