.class public final Lcom/join/android/app/mgsim/wufun/generated/callback/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;
    }
.end annotation


# instance fields
.field final b:Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;

.field final c:I


# direct methods
.method public constructor <init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "sourceId"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;->b:Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;

    .line 5
    .line 6
    iput p2, p0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbackArg_0"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;->b:Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;->c:I

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;->a(ILandroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
