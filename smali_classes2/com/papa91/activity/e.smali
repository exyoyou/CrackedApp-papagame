.class public final synthetic Lcom/papa91/activity/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/papa91/activity/EmuBaseActivity;

.field public final synthetic c:Lcom/papa91/arc/bean/Request;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/activity/e;->b:Lcom/papa91/activity/EmuBaseActivity;

    iput-object p2, p0, Lcom/papa91/activity/e;->c:Lcom/papa91/arc/bean/Request;

    iput p3, p0, Lcom/papa91/activity/e;->d:I

    iput p4, p0, Lcom/papa91/activity/e;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/e;->b:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v1, p0, Lcom/papa91/activity/e;->c:Lcom/papa91/arc/bean/Request;

    iget v2, p0, Lcom/papa91/activity/e;->d:I

    iget v3, p0, Lcom/papa91/activity/e;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/papa91/activity/EmuBaseActivity;->l(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/Request;II)V

    return-void
.end method
