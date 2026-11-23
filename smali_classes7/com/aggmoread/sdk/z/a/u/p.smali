.class public Lcom/aggmoread/sdk/z/a/u/p;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/u/p$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:I

.field private d:I

.field private e:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aggmoread/sdk/z/a/u/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p2, p0, Lcom/aggmoread/sdk/z/a/u/p;->c:I

    iput p3, p0, Lcom/aggmoread/sdk/z/a/u/p;->d:I

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/p;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aggmoread/sdk/z/a/u/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/p;->a:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/p;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/p;->b()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/p;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/aggmoread/sdk/z/a/u/p;->a:I

    return p0
.end method

.method private a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/p;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/p;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAM4AAADOCAMAAABBwc32AAAAyVBMVEUAAAD////9/f34+Pj6+vr19fXw8PDy8vLl5eXY2Njp6em/v7/h4eHb29u2trazs7Pr6+vd3d3t7e3Nzc3f39+wsLCdnZ3T09PKysrDw8Onp6fGxsZxcXGampqXl5eDg4Pn5+e6urqPj4+kpKTV1dW4uLirq6ugoKDIyMjBwcFhYWGJiYnR0dHPz8+AgIB7e3uMjIySkpKpqalsbGxnZ2eGhoZcXFyjo6N9fX12dnZXV1eUlJRPT0+8vLytra3MzMxJSUlDQ0N4eHgZZSyLAAAAAXRSTlMAQObYZgAADHxJREFUeNrs2+ly2kAMAGBJ67XBYBtsThMI9xEIRwKlaQohff+H6kEmponvq9Dh+83ACMurtVaGq6urq6urq6urq6tLZQ46D/Cf6NUykkC8fd+Ci7fKFSXCP6igwUXbDPq6gO9I2sHlGhqygH8Te3CZmvUSJ/yIFLhAG7WvE9oRK3BpTENm6IDqcFGaEyvJ7OThckw7ii6gKz6EC7GfyQJ6IQMuQaWR5+iHPIVzN+1kRUJ/BBXO294ql3704YyNrHLpk9iEM9XdFSXCgGgCZ6lcLQgYQukGzs5onHdOsgsrPd2d4rySXVrpKVdlAaNob+BcmGOXcnlhpaeVK7reMLydEelCSs+tVnXdX7JMrTdfNIuEngpdiCp6O4ahMxKr2vwVfjE5ehJyEFX0dowzXso9f4OjpY7eivDPbDp99yRrGz2rMPoLRxxB2qx2jHuS7W8PcGLA0BuNIWVWO8YZL3ZW3+HE9+Wk4BS3cm9kRXyTmUPazL5OritZY/sIpxblmcMujuVzrfXhcGdm8IjtIWUNCd2Iua9waj0aO6x9gvzSe4IjU8KjKqQry9BV7RUs31o5xT56krLa9GB9sP9vSo8hoCsqw7uN1hfJ4ebKNe/glPb2vUIHUrSX0Gc4N72XNnPcJjzCBxsZjxRIkYJeqncA8GWVK3Fy2SZ8ZuCRNILUrHT0wvpl02pF224TbJnsLd4dpMbk6E1g5LBNqPVuwMlT/njxsl1IzZBhSCRmtdtXcFEn5Pl6E9619rt6pwkJqogYCi/uWnfgbv7y8mBdvKma1RkhidUKJGaeweCEzLj3GPrshPQ6JMYg9M1ayaI9drAcJMXkGIRUzK2+QxALmy6dPoKE3JTQm1Uut8GS7NG0fbalPiQlR+iLUAicZM1ciaMtfQUJaYnojSRF7X4LGMzMudnDTUjIl76PJKtX1hBQTqR/0u7VmEeS3Q8XENiOowv+AEm5bbsm2aB7gOC2IrrhW0hMjRzbUPXRHYSiELppTyExWwltMNkwbyCkkfjvjhZuSvb7y0Niq7/eggTV6UOS5Sf2+8vb7mYBfozRjViGJFWkT+0YGxu12i7I+ZJS057BQwOdUaEMifqSxXe8tjzY7laM90YBMV0ZhA1HKNRWkLCBgG9Yw672tyZFjn9hJTVELSMpO1hC4qYFfJP5anvcQ/gJr4KzTdu2Q1qv3EEaDHxjfMi0J7PWZmiLiuBMlT51SO8fniAlQ2bbUW7W3Q7hhSo4G7O/1/3B9ACp+ZE//oHDb6crmdc4EdfA0brKrPss93wHqaoLYlbdnJRW895KslAThWs1zwVBYLLVvErPV/W0cLZ8jhMxFVw8bYcPD73NK3y2rFSWkI7lwP/M2izcKElWFkW5OoTEPT0YAcaJrHXdm3XSpQtvRah/C0m6a9bzDC3xn+SOGqedEMonGM9SVSTCYFg5SJINPv4AzSAZi+F9mJk1wXc4c61v/UBSrypYOcAJQyAVfNnWMiyt57hy+Jk10sDb1GWUpBh/MBw9RemXaW1CRyWI1TbrHkz0iagGR0wpnK4hEkahrMFDh2Na4Ux0wkioDh5aOrrKQly6fYYRFVbg4YW8Nn0x6cgCRkQ18FJEN6Q8QjxmHDH5i7PIoBu9ArF4LgkYGVchWjiZmKIpyxRDNBOIEg6Jsw3EYiJiotF4z8jQ7zNWiEeNY2Qka+DHjtlOi4xHN3A+0ZBoLP228+nzQX55/grnEw0vTVrfQx6NSMpg9QXi04gYDZONYJ0ZTaSTodLKGuKkBo0m+rFPT2HH2ZX7/QLi1dMxPJ6fPIdJlMdho/YyHnS/Q8xGIaKxEqX3BPHaqDNFUYw9hHObD51ks/Ic4mWNlnKlCWHMhLCza6u4E+X5dLSUCj0IbsdDJdl4u4Z4zbUP725QoQlBbXUMivRq7En22HvJsBhGqPKEfln7qm8Qr8qkKFEcbwDXhaArWeVne2fanDYMhOFFdnwbcDjDZUwSwn2XAIG28P9/VC/adcIlreU0meH51pnOtIJF72q1+2oKcumevjFij4K/PZFQU2/7kyHIxj53/rVBiALj/2JclDyJtHAnirycJveuxpwJfSejJ4sbqaMGSL2BSgfwXqMbLJDYgofgfEqllMkmQRouwdtAwpej1/7sHL9sYyQOrlU1conrkBzfLwf7AJsakzu4ljsfHs4ABPBE67Tt/T7YB0kkzw5x1quxdbI7y1BLmDUCOaTUM9nHQyOWOQNsou2YkgfX7m/OZB8dsdyinuAEAyxgciv8C+P4ZGaxOaQ3SvO7D43Skn3JyuzwTPiQ9LcgTC8hhJqCn/T3/2YZ5DD02Num5tqclMdaCTEe5r9UXMGdQQq+x6Q0NScFYg0VeunsP0Vp0rMoajKamjMJQZgd7kbugzSqZdewPGxqpjV9k9yHUHq6II/Zwj8WZLvmxrY3k5hmD5USXXrojm/sxknCRZIsIUwR8xKC9NAd3256QGg4v0jdB4DGbey+ZIPcG0cOtQ8XKFDdh1YPMVtiHrNx0EvydgKksELpiceXrBEcrVCxgjwRRbQa5lkxDKotTju+WSOOYyDN+K6I0iMV21CoQ37PN/TeoSc9jtEuH81FBOuH+AMQRc8DwNTFzhl5uCxC/2JKXHYwk7aZfOlp4+dLcEp+TNAwhmHpqQEB0taUncpeDs6KrAqYlMZdA8G4lrgcpLAO1ZM8iZNCiLjs0Jdz28AWIYkj3w/n+9sWcjNQRH38LT1YpYx9OUzvLeACOTVS2+pkL1uGH3ewqVbraQ5nQSmkSk/FkSw9OeWEt0PS5791o0tPm0nyJXtuZQYAsMseu4QNuLwdsGBGlp6qvt8ZXiACtTtPZ2obflLSyJewmBZTUJoAMHMjS8/gr0OVs4OfBPqrdpLmAkQwE2T6mOjQpaeU+Zc/KwH8IpU+cEzkp5ggkx6htQlNemqv2wisxp/fcytbrxte+WkKwjyShAelZ25SpWeQfDvdzLzd/ozsDwahtQyXIl4RZMw5XiaI3iyWsBKAqO7hdjx9bhnZUcx7AWbSL9o+8lNwAY7pZmZMVhBiVb3L6kykvJKJOAHSMXktMXG6+YyZrV4oLfFv/rJ+xE0PkZ61YREnqYpIz6RvKZeaMDNBrlTNp4qWKm6cU9MiDoN1LS7pwelmDpii62r4z33gpOMm6GQAYN3jm7vz93JJwhoJW19Qy7s5heMcn0MzELIoyL9+Q3A7GxqXbhafyriTETGBl34ikvTg1ZWxuDB8jDDN8TxDYOpZywucMchoL6GrK6UJBzSPvS2kZB9fdrPpIn9nqNyiIGB9QQG3s6l3YuS7ejzIbjcV2OMXebMSR+S2l4xTwbT69dhrNzg+3cyMPCDrQOMUhXvgZOhEkJ5n1K7wQwCp3im5fNMUvbUV3jjgJVDo0fYtbNuUzu1PyobC/fZBx+TVOF6WEb4e60u440k37WTb1dkFqaKUX74RG/QITS1fULsYY4JPBcxM2ctZ9RhdelY4bXwZZQIHtBM8lIGfkRVNeu5v+M9IB+QYXwIigK3SpQfrh7TX6yYXdiLCaXdqskinHptx10sOaHJ8lHoKhGhQJpNR4MaX1PCME/2GXQ61FgjyVSOXd1F6LsICQoMg0+46IMj6m0pNdHYCPZhuh3sbQnfIPIgzdNUIN4t+nTPamkKjQ0x7SH0BEgOHWt79DrDN8H6XC/7xTiVr1+ZApZqmlncFHhlQzSWEGBvsZJAVSxWIwjNtPSwQSfxUdxyqhhrsdJBtgQh9Pfj7bjNuN4P2/mCUz2jshMV9dQ4SeDIY9WYxr/PnrWmzZbeLrsaOz6I+zUASXVelSA8eXKKh3hZyC0KQyd2vnR2Wd+kw3ds0ViCXHcEkR2kSLloJHh8UOknx/1dvDfCdVLFDjw9/C/FQEzYyS3cx0xdHN4PxCuJjlqyrYj/hgFQSwpGjmPFbunhTyx0TDrJ0LzeEd2BdMvW4pAffUdg01vBOzO8FFsTa2DXBA10u6cyf+xrjXE5L6LJITf+US3h31rXzT6biK2Jf+Ht8mG4mRyv4P0yrtnfuO1I1r5jz96vvcQSZ06524H8yraUyjqYc3jrdGGYrN57yP62mWpnJEv4/2+X4/rHcN82soWlpy/HMftlOPQ06XG0XGGTd7/BxWM9nFX/80vCHlc5asGdJce6qHfhknCjvKlb/QwSZKDP3hDXYRwoyASbawYsw9sscPi2B/nonK1XgM7O608MP9G7hszMxdfbnFehPHGQh5vlUKnX/GXeyK1euXLly5cqVD8EPSyUYEIaqfqMAAAAASUVORK5CYII="

    invoke-static {p0, v0}, Lcom/aggmoread/sdk/z/a/m/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    new-instance v0, Lcom/aggmoread/sdk/z/a/u/p$a;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/u/p$a;-><init>(Lcom/aggmoread/sdk/z/a/u/p;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/u/p;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/p;->e()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/p;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/u/p;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/p;->d()V

    return-void
.end method

.method private d()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/p;->c:I

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/p;->d:I

    :cond_1
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, v1

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, -0x3e380000    # -25.0f

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Keyframe;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v2, 0x2

    aput-object v3, v4, v2

    const/4 v2, 0x3

    aput-object v0, v4, v2

    const-string v0, "rotation"

    invoke-static {v0, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v5

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/p;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private e()V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/p;->c:I

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/p;->d:I

    :cond_1
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, v1

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, -0x3e100000    # -30.0f

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v6, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const v7, 0x3f19999a    # 0.6f

    invoke-static {v7, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/16 v8, 0x8

    new-array v8, v8, [Landroid/animation/Keyframe;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    const/4 v2, 0x2

    aput-object v4, v8, v2

    const/4 v2, 0x3

    aput-object v5, v8, v2

    const/4 v2, 0x4

    aput-object v6, v8, v2

    const/4 v2, 0x5

    aput-object v3, v8, v2

    const/4 v2, 0x6

    aput-object v7, v8, v2

    const/4 v2, 0x7

    aput-object v0, v8, v2

    const-string v0, "rotation"

    invoke-static {v0, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v9

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/p;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/p;->a()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "si onVisibilityChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/p;->a()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/p;->c()V

    :cond_1
    :goto_0
    return-void
.end method
