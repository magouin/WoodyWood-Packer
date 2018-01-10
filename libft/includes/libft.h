/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jcamhi <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/11/23 12:40:08 by jcamhi            #+#    #+#             */
/*   Updated: 2016/09/02 00:08:06 by jcamhi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H
# include <string.h>
# include <sys/types.h>
# include <sys/uio.h>
# include <unistd.h>
# include <fcntl.h>
# include <stdlib.h>
# include <libft.h>
# include <stdarg.h>
# define BUFF_SIZE 1000
# define ABS(x) (x > 0 ? x : x * -1)

char				*ft_alloc_str_with_char(int c);
char				*ft_strtoupper(char *str);
void				*ft_go_on(void *str, int i);
char				*ft_itoa_ptr(void *ptr);
char				*ft_itoa_base(unsigned int nbr, int base);
char				*ft_itoa_base_ll(long long nbr, int base);
char				*ft_itoa_base_ull(unsigned long long nbr, int base);
char				*ft_alloc_str(const char *str);
void				*ft_memset(void *b, int c, size_t len);
void				*ft_memcpy(void *dst,
		const void *src, size_t n);
void				*ft_memccpy(void *dst,
		const void *src, int c, size_t n);
void				*ft_bzero(void *s, size_t n);
void				*ft_memchr(const void *s, int c, size_t n);
int					ft_memcmp(const void *s1, const void *s2, size_t n);
void				*ft_memmove(void *dst, const void *src, size_t n);
size_t				ft_strlen(const char *s);
size_t				ft_wstrlen(const char *s);
char				*ft_strdup(const char *s1);
char				*ft_strcpy(char *dst, const char *src);
char				*ft_strncpy(char *dst,
		const char *src, size_t n);
char				*ft_strcat(char *s1, const char *s2);
size_t				ft_strlcat(char *dst,
		const char *src, size_t size);
char				*ft_strncat(char *s1,
		const char *s2, size_t n);
char				*ft_strchr(const char *s, int c);
char				*ft_strrchr(const char *s, int c);
char				*ft_strstr(const char *s1, const char *s2);
char				*ft_strnstr(const char *s1, const char *s2, size_t n);
int					ft_strcmp(const char *s1, const char *s2);
int					ft_strrevcmp(const char *s1, const char *s2);
int					ft_strncmp(const char *s1, const char *s2, size_t n);
int					ft_isalpha(int c);
int					ft_isdigit(int c);
int					ft_isalnum(int c);
int					ft_isascii(int c);
int					ft_isprint(int c);
void				*ft_memalloc(size_t size);
void				ft_memdel(void **ap);
char				*ft_strnew(size_t size);
void				ft_strdel(char **as);
void				ft_strclr(char *s);
void				ft_striter(char *s, void (*f)(char*));
void				ft_striteri(char *s, void (*f)(unsigned int, char*));
char				*ft_strmap(char const *s, char (*f)(char));
char				*ft_strmapi(char const *s, char (*f)(unsigned int, char));
int					ft_strequ(char const *s1, char const *s2);
int					ft_strnequ(char const *s1, char const *s2, size_t n);
char				*ft_strsub(char const *s, unsigned int start, size_t len);
char				*ft_strjoin(char const *s1, char const *s2);
char				*ft_strjoinaf1(char *s1, char const *s2);
char				*ft_strjoinaf2(char const *s1, char *s2);
char				*ft_strjoinaf12(char *s1, char *s2);
char				*ft_strtrim(char const *s);
char				**ft_strsplit(char const *s, char c);
void				ft_putchar(char c);
void				ft_putstr(char *s);
void				ft_putendl(char *s);
void				ft_putnbr(int n);
void				ft_putunbr(unsigned int n);
void				ft_putchar_fd(char c, int fd);
void				ft_putstr_fd(char *s, int fd);
void				ft_putendl_fd(char *s, int fd);
void				ft_putnbr_fd(int n, int fd);
int					ft_atoi(const char *s);
char				*ft_itoa(int n);
int					ft_toupper(int c);
int					ft_tolower(int c);

typedef	struct		s_list
{
	void			*content;
	size_t			content_size;
	struct s_list	*next;
}					t_list;

int					get_next_line(const int fd, char **line);

typedef	struct		s_gnl
{
	char			*line;
	int				fd;
	struct s_gnl	*next;
}					t_gnl;

void				ft_lstadd(t_list **alst, t_list *new);
void				ft_lstdel(t_list **alst, void (*del)(void *, size_t));
void				ft_lstdelone(t_list **alst, void (*del)(void *, size_t));
void				ft_lstiter(t_list *lst, void (*f)(t_list *elem));
t_list				*ft_lstnew(void const *content, size_t content_size);
t_list				*ft_lstmap(t_list *lst, t_list *(*f)(t_list *elem));
void				*mallocp(size_t size);

#endif
